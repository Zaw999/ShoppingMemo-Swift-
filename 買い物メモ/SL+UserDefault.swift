//
//  SL+UserDefault.swift
//  買い物メモ
//
//  Created by zawyenaing on 2018/08/23.
//  Copyright © 2018 swift.test. All rights reserved.
//

import Foundation
import UIKit

extension UserDefaults{
    
    //intialize default data
    func registerDefaultData(key:String, data: Any) {
        register(defaults: [key:data])
    }
    
    //set global color
    func UIColorToData(_ value: UIColor?) -> Data? {
        var colorData: Data?
        if let color = value {
            colorData = NSKeyedArchiver.archivedData(withRootObject: color)
        }
        return colorData
    }
    
}
