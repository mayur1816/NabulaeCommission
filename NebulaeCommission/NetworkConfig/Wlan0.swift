//
//	Wlan0.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

public struct Wlan0 : Codable  {

    public var enabled : String?
    public var wlanInfo : WlanInfo?
    public init() {}

	enum CodingKeys: String, CodingKey {
		case enabled = "enabled"
		case wlanInfo = "wlanInfo"
	}
//    
//    public func setEnabled(enabled : String){
//        self.enabled = enabled
//    }
//    
//    public func setwlanInfo(wlanInfo : WlanInfo){
//        self.wlanInfo = wlanInfo
//    }
//    
//    public init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		enabled = try values.decodeIfPresent(String.self, forKey: .enabled)
//		wlanInfo =  try values.decodeIfPresent(WlanInfo.self, forKey: .wlanInfo) //WlanInfo(from: decoder)
//        
//
//	}


}
