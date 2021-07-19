//
//  storage.swift
//  NebulaeCommission
//
//  Created by Mayur.Patel.653 on 07/07/21.
//

import Foundation
public class Storage{
    
    
    
    static let shared = Storage()
    private let defaults = UserDefaults.standard
    
    var notificationToken : String? = nil
    
//    func setConnectionMode(cMode :ConnectionMode){
//        let encoder = JSONEncoder()
//        if let encoded = try? encoder.encode(cMode) {
//
//            defaults.set(encoded, forKey: "ConnectionMode")
//        }
//    }
//
//    func getConnectionMode() -> ConnectionMode?{
//        if let cMode = defaults.object(forKey: "ConnectionMode") as? Data {
//
//            let decoder = JSONDecoder()
//            if let cMode = try? decoder.decode(ConnectionMode.self, from: cMode) {
//
//                return cMode
//            }
//        }
//        return nil
//    }
//
//    func setNetworkInfo(networkInfo :NetworkInfo){
//        let encoder = JSONEncoder()
//        if let encoded = try? encoder.encode(networkInfo) {
//
//            defaults.set(encoded, forKey: "NetworkInfo")
//        }
//    }
//
//    func getNetworkInfo() -> NetworkInfo?{
//        if let cMode = defaults.object(forKey: "NetworkInfo") as? Data {
//
//            let decoder = JSONDecoder()
//            if let networkInfo = try? decoder.decode(NetworkInfo.self, from: cMode) {
//
//                return networkInfo
//            }
//        }
//        return nil
//    }
//
//
    
//    
//    func clearAllStorage(){
//    
//        //defaults.removeObject(forKey: "SLEEPDATE")
//        defaults.removeObject(forKey: "ConnectionMode")
//    }
}

