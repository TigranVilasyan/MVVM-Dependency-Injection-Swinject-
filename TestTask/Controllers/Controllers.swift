//
//  Controllers.swift
//  TestTask
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import UIKit

class Controllers {
    
    //MARK: RootViewController
    func rootViewController() -> RootViewController {
        return controllerAt(identifier: "RootViewController", storyBoard: "Main") as! RootViewController
    }
}


extension Controllers {
    func controllerAt(identifier: String,storyBoard: String) -> UIViewController {
        let storyBoard = UIStoryboard(name: storyBoard, bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: identifier)
        return vc
    }
}
