//
//  Block.swift
//  Berlin-Clock
//
//  Created by 2022-dev2-004 on 22/01/2023.
//

import UIKit

enum BlockMode {
    case yellow, red, off
}

enum RoundCorners {
    case topLeft, bottomLeft, bottomRight, topRight
}

class Block: UIView {
    //MARK: - Layout
    
    class Layout {
        static let yellowOnColor = UIColor.systemYellow
        static let redOnColor = UIColor.systemRed
        static let offColor = UIColor.systemGray6
        static let borderColor = CGColor(red: 110, green: 100, blue: 100, alpha: 1)
        static let borderWidth: CGFloat = 3
    }
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.borderWidth = Layout.borderWidth
        
      }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.layer.borderColor = Layout.borderColor
    }
    
    //MARK: - UI Config
    
    func setBackgroundColor(for mode: BlockMode) {
        switch mode {
        case .yellow:
            self.backgroundColor = Layout.yellowOnColor
        case .red:
            self.backgroundColor = Layout.redOnColor
        case .off:
            self.backgroundColor = Layout.offColor
        }
    }
}
