//
//  GatewayCommissioningManager.swift
//  NebulaeCommission
//
//  Created by Mayur.Patel.653 on 05/07/21.
//

import Foundation

public class GatewayCommissioningManager {
    
    public let BASE_URL = "192.168.4.1:80";
    public var transportVersion = "", securityVersion = "";
    public var pop = ""
    public var isBLEConnected : Bool!
     var session: ESPSession!
    public static let shared = GatewayCommissioningManager()
   
    
    
    public func SetNetworkInfo(networkName : cMode, securityMode : SecurityMode)
    {
    
        
        var networkInfo = NetworkInfo()
//        networkInfo.setdAddress(dAddress: "12321")
        

        if(networkName == cMode.BLE){
            transportVersion = ESPProvision.CONFIG_TRANSPORT_BLE
        }
        else{
            transportVersion = ESPProvision.CONFIG_TRANSPORT_WIFI
        }
        
        if(securityMode == SecurityMode.SECURITY0){
            securityVersion = ESPProvision.CONFIG_SECURITY_SECURITY0
        }
        else{
            securityVersion = ESPProvision.CONFIG_SECURITY_SECURITY1
        }
    }
    
    public func SendRequest(requestData: String,
                         completionHandler: @escaping (Data?, Error?) -> Void) {
        var security : ESPCodeable
        var transport : ESPCommunicable
        
  
        if(securityVersion == ESPProvision.CONFIG_SECURITY_SECURITY1)
        {
            security = ESPSecurity1(proofOfPossession: pop)
        }
        else{
            security = ESPSecurity0()
        }
        
        //transport Wifi or BLE
       if (transportVersion == ESPProvision.CONFIG_TRANSPORT_WIFI) {
            transport = ESPSoftAPTransport(baseUrl: self.BASE_URL)
        self.provision(transport: transport, security: security, requestData: requestData, completionHandler: completionHandler)
        } else if (transportVersion == ESPProvision.CONFIG_TRANSPORT_BLE) {
            if (isBLEConnected) {
            transport = ESPBleTransport.self as! ESPCommunicable;
                self.provision(transport: transport, security: security, requestData: requestData, completionHandler: completionHandler)
        } else {
            if (self.session != nil)
            {
            session = nil;
                completionHandler(nil,NSError(domain: "com.espressif.ble", code: 400, userInfo: [NSLocalizedDescriptionKey:"Device is not connected"]))

            }
        }
           
    }
    
    }
    
    
        
    func provision(transport : ESPCommunicable, security: ESPCodeable, requestData: String,completionHandler: @escaping (Data?, Error?) -> Void) {
    if(session == nil)
    {
        session = ESPSession(transport: transport, security: security)
        let finalSession : ESPSession = session
        
        session.initialize(response: nil) { error in
            guard error == nil else {
                ESPLog.log("Init session error")
                ESPLog.log("Error in establishing session \(error.debugDescription)")
                if (self.session != nil)
                {
                    self.session = nil
                }
                                       
                completionHandler(nil,NSError(domain: "com.espressif.ble", code: 400, userInfo: [NSLocalizedDescriptionKey:"Error in establishing session \(error.debugDescription)"]))

                
                return
            }
            ESPLog.log("Init session success")
            self.applyConfig(session: finalSession , requestData: requestData, completionHandler : completionHandler);
        }

    }
    else{
        self.applyConfig(session: self.session , requestData: requestData, completionHandler: completionHandler);
    }
}
        
    func applyConfig(session : ESPSession, requestData: String,completionHandler: @escaping (Data?, Error?) -> Void)
    {
        let provision = ESPProvision(session: session)
        provision.sendUniversalRequest(data: requestData) { (status, error) in
            
            print("Status => ",status)
            print("Error => ", error as Any)
        }
    }
    
    
    
    
    public func setPin(pop : String){
        self.pop = pop;
    }
    
    
    

    
     public enum cMode{
        case WIFI
        case BLE
    }
    
    public enum SecurityMode {
        case SECURITY0
        case SECURITY1
    }
    

}
