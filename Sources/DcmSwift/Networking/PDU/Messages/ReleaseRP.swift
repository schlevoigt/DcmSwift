//
//  ReleaseRP.swift
//  DcmSwift
//
//  Created by Rafael Warnault on 03/05/2019.
//  Copyright © 2019 OPALE. All rights reserved.
//

import Foundation


public class ReleaseRP: PDUMessage {
    public override func messageName() -> String {
        return "A-RELEASE-RSP"
    }
    
    public override func data() -> Data {
        var data = Data()
        let length = UInt32(4)
        
        data.append(uint8: self.pduType.rawValue, bigEndian: true)
        data.append(byte: 0x00)
        data.append(uint32: length, bigEndian: true)
        data.append(byte: 0x00, count: 4)
        
        return data
    }
    
    
}