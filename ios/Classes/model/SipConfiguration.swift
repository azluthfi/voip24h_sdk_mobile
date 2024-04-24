//
//  SipConfiguration.swift
//  voip24h_sdk_mobile
//
//  Created by Phát Nguyễn on 12/08/2022.
//

import Foundation
import linphonesw


class SipConfiguaration: Decodable {
    
    var ext: String!
    var password: String!
    var domain: String!
    var port: Int = 5060
    var transportType: Int = 0
    var isKeepAlive: Bool = false
    
    
    func toLpTransportType() -> TransportType {
        switch(transportType) {
            case 1:
                return TransportType.Tcp
            case 0:
                return TransportType.Udp
            case 2:
                return TransportType.Tls
            default:
                return TransportType.Udp
        }
    }
    
    private enum CodingKeys : String, CodingKey {
        case ext = "extension", password, domain, port, transportType, isKeepAlive
    }
}
