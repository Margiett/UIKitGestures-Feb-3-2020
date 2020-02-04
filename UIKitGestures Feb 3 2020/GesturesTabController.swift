//
//  GesturesTabController.swift
//  UIKitGestures Feb 3 2020
//
//  Created by Margiett Gil on 2/3/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {
    
    private lazy var tapGestureVC: TabGestureController = {
        
        let storyBoard = UIStoryboard(name:"TapGesture", bundle: nil)
        
        guard let viewController = storyBoard.instantiateViewController(identifier: "TabGestureController") as? TabGestureController else {
            fatalError("look at the names TabGestureController")
        }
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

     viewControllers = [tapGestureVC, SwipeGestureController() ]
    }
    

  

}
