//
//  PowWindow.swift
//  Pow
//
//  Created by Elias Abel on 4/19/18.
//  Copyright (c) 2018 Meniny Lab. All rights reserved.
//

import UIKit
import PapaLayout

class PowWindow: UIWindow {
    
    var isAbleToReceiveTouches = false
    
    init(with rootVC: UIViewController) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .clear
        rootViewController = rootVC
        makeKeyAndVisible()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if isAbleToReceiveTouches {
            return super.hitTest(point, with: event)
        }
        if let view = super.hitTest(point, with: event), view != self {
            return view
        }
        return nil
    }
}
