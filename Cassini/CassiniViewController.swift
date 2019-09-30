//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Manh Hoang Le on 25.09.19.
//  Copyright © 2019 Manh Hoang Le. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if let url = DemoURLs.NASA[identifier] {
                /*
                var destination = segue.destination
                
                 if let navcon = destination as? UINavigationController{
                    //let destination be navcon's visibleViewController, it might be nil
                    print("UINavigationController")
                    //get visibleViewController in NavigationController
                    destination = navcon.visibleViewController ?? navcon
                }
                
                if let imageVC = destination as? ImageViewController{
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
                */
                
                if let imageVC = segue.destination.contents as? ImageViewController {
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }

}

extension UIViewController {
    var contents: UIViewController{
        if let navcon = self as? UINavigationController{
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
