//
//	NetworkInfo.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

public class NetworkInfo: NSObject  {

    public var dAddress : String?
    public var gateway : String?
    public var ipAddress : String?
    public var networkMask : String?
   

	enum CodingKeys: String, CodingKey {
		case dAddress = "dAddress"
		case gateway = "gateway"
		case ipAddress = "ipAddress"
		case networkMask = "networkMask"
	}
    
    public func getdAddress() -> String {
        return dAddress ?? ""
    }

    
//    public func setdAddress(dAddress : String){
//        self.dAddress = dAddress
//    }
//    public  func setgateway(gateway : String){
//        self.gateway = gateway
//    }
//    
//    public func setipAddress(ipAddress : String){
//        self.ipAddress = ipAddress
//    }
//    
//    public func setnetworkMask(networkMask : String){
//        self.networkMask = networkMask
//    }
//    


}
