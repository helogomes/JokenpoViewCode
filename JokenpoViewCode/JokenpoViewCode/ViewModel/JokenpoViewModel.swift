//
//  JokenpoViewModel.swift
//  JokenpoViewCode
//
//  Created by user218997 on 28/06/22.
//

import Foundation
import UIKit


extension JokenpoView {
    func play() {
        
            
                if  self.imageView.image == UIImage(named: "0") &&  self.imageView2.image == UIImage(named: "2") {
                                    computer1 += 1
                                    score1.text = String(computer1)
                                } else if self.imageView.image == UIImage(named: "0") &&  self.imageView2.image == UIImage(named: "1"){
                                    computer2 += 1
                                    score2.text = String(computer2)
                                } else if self.imageView.image == UIImage(named: "1") &&  self.imageView2.image == UIImage(named: "0") {
                                    computer1 += 1
                                    score1.text = String(computer1)
                                } else if  self.imageView.image == UIImage(named: "1") &&  self.imageView2.image == UIImage(named: "2"){
                                    computer2 += 1
                                    score2.text = String(computer2)
                                } else if  self.imageView.image == UIImage(named: "2") &&  self.imageView2.image == UIImage(named: "1") {
                                    computer1 += 1
                                    score1.text = String(computer1)
                                } else if  self.imageView.image == UIImage(named: "2") &&  self.imageView2.image == UIImage(named: "0"){
                                    computer2 += 1
                                    score2.text = String(computer2)
                                }

                
                
               
            }
}

