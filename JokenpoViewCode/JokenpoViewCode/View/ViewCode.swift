//
//  ViewCode.swift
//  JokenpoViewCode
//
//  Created by user218997 on 28/06/22.
//

import Foundation

protocol ViewCode {
   // func buildViewHierarchy()
    func addConstraints()
    func additionalConfiguration()
    func setup()
}

extension ViewCode {
    func setup() {
        //buildViewHierarchy()
        addConstraints()
        additionalConfiguration()
    }
    
    func additionalConfiguration() {}
}
