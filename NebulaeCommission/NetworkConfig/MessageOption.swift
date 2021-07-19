//
//	MessageOption.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

public class MessageOption : NSObject {

	var eth0 : Eth0?
    var wlan0 : Wlan0?
  

	enum CodingKeys: String, CodingKey {
        case eth0 = "eth0"
		case wlan0 = "wlan0"
	}
//    
//    public func setEth0(Eth0 : Eth0){
//        self.eth0 = Eth0
//    }
//    
//    public func setwlan0(Wlan0 : Wlan0){
//        self.wlan0 = Wlan0
//    }
//    
    
//    public init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		eth0 = try Eth0(from: decoder)
//		wlan0 = try Wlan0(from: decoder)
//	}


}
