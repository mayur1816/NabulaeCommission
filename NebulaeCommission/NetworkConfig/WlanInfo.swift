//
//	WlanInfo.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

public struct WlanInfo : Codable {

    public var password : String?
    public var ssid : String?
    public init() {}

	enum CodingKeys: String, CodingKey {
		case password = "password"
		case ssid = "ssid"
	}
    
//    public func setpassword(password : String){
//        self.password = password
//    }
//    
//
//    public func setssid(ssid : String){
//        self.ssid = ssid
//    }
//    

    
//    public init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		password = try values.decodeIfPresent(String.self, forKey: .password)
//		ssid = try values.decodeIfPresent(String.self, forKey: .ssid)
//	}


}
