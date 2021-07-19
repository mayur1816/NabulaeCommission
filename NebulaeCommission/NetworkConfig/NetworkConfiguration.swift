//
//	NetworkConfiguration.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

public class NetworkConfiguration: NSObject  {

    public var messageOptions : MessageOption?
    public var messageType : String?

   
	enum CodingKeys: String, CodingKey {
		case messageOptions = "messageOptions"
		case messageType = "messageType"
	}
    
//    public func setMessageOptions(messageOption : MessageOption){
//        self.messageOptions = messageOption
//    }
//    public func setmessageType(messageType : String){
//        self.messageType = messageType
//    }
    
//    public init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		messageOptions = try MessageOption(from: decoder)
//		messageType = try values.decodeIfPresent(String.self, forKey: .messageType)
//	}


}
