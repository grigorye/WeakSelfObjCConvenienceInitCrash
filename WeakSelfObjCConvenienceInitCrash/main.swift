//
//  main.swift
//  WeakSelfObjCConvenienceInitCrash
//
//  Created by Grigory Entin on 6/28/19.
//  Copyright © 2019 Grigory Entin. All rights reserved.
//

import Foundation

class Foo {
    
    let foo: Int? = nil
    
    required init() {
    }
    
    @objc convenience init(x: Int) {
        self.init()
        _ = { [weak self] in
            _ = self
        }
    }
}

_ = Foo(x: 0)
