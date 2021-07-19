//
//	ConnectionMode.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

public class ConnectionMode: NSObject {

    public var networkInfo : NetworkInfo?
    public var type : String?

//    public func setNetworkInfo(NetworkInfo : NetworkInfo){
//        networkInfo = NetworkInfo
//    }
//
//    public func setConnectionType(connectionType : String){
//        type = connectionType
//    }
//
	enum CodingKeys: String, CodingKey {
        case networkInfo = "networkInfo"
		case type = "type"
	}
//    public init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		networkInfo = try values.decodeIfPresent(NetworkInfo.self, forKey: .networkInfo) //NetworkInfo(from: decoder)
//		type = try values.decodeIfPresent(String.self, forKey: .type)
//	}
    

}
