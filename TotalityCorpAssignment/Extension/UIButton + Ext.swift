//
//  UIButton + Ext.swift
//  TotalityCorpAssignment
//
//  Created by Sumayya Siddiqui on 31/07/23.
//

import Foundation
import UIKit

// MARK: UIButton Extension
extension UIButton {
    public func btnCornerRadius() {
        self.layer.cornerRadius = frame.size.height/2
    }
    
}
