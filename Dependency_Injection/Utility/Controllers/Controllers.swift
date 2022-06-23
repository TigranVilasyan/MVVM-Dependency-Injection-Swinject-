//
//  Controllers.swift
//  Dependency_Injection
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import UIKit

class Controllers {
    
    //MARK: FirstViewController
    class func firstViewController() -> FirstViewController {
        return controllerAt(identifier: "FirstViewController", storyBoard: "Main") as! FirstViewController
    }
    
    
    //MARK: SecondViewController
    class func secondViewController() -> SecondViewController {
        return controllerAt(identifier: "SecondViewController", storyBoard: "Main") as! SecondViewController
    }
}


extension Controllers {
    
    class func controllerAt(identifier: String,storyBoard: String) -> UIViewController {
        let storyBoard = UIStoryboard(name: storyBoard, bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: identifier)
        return vc
    }
}
