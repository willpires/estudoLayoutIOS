//
//  AppNavigationController.swift
//  estudoLayout
//
//  Created by william pires on 03/10/21.
//

import UIKit
import Material

class AppNavigationController: NavigationController {
  open override func prepare() {
    super.prepare()
    isMotionEnabled = true
      motionNavigationTransitionType = .slide(direction: .down)

//    motionNavigationTransitionType = .fadeSlide(direction: .down)
    guard let v = navigationBar as? NavigationBar else {
      return
    }
    
    v.backgroundColor = .white
    v.depthPreset = .none
    v.dividerColor = Color.grey.lighten2
  }
}
