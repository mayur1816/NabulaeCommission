//
//	Eth0.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

public class Eth0: NSObject {

    public var connectionMode : ConnectionMode?
    public var enabled : String?
  
//    public func setConnectionMode(ConnectionMode : ConnectionMode){
//        connectionMode = ConnectionMode
//    }
//    
//    public func setEnabled(Enabled : String){
//        enabled = Enabled
//    }
//    
	enum CodingKeys: String, CodingKey {
		case connectionMode = "connectionMode"
		case enabled = "enabled"
	}
//    public init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		connectionMode = try values.decodeIfPresent(ConnectionMode.self, forKey: .connectionMode)
//		enabled = try values.decodeIfPresent(String.self, forKey: .enabled)
//	}


}
