//
//  ViewController.swift
//  DBDynamicAppIcon-swift
//
//  Created by db J on 2021/1/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickNewIconsBt1(_ sender: Any) {
        self.changeAppIconWithName("newIcons1")
    }
    
    @IBAction func clickNewIconsBt2(_ sender: Any) {
        self.changeAppIconWithName("newIcons2")
    }
    
    @IBAction func clickNewIconsBt3(_ sender: Any) {
        self.changeAppIconWithName("newIcons3")
    }
    
    @IBAction func clickNewIconsBt4(_ sender: Any) {
        self.changeAppIconWithName("newIcons4")
    }
    
    @IBAction func clickNewIconsBt5(_ sender: Any) {
        self.changeAppIconWithName("newIcons5")
    }
    
    func changeAppIconWithName(_ iconName:String) -> Void {
        if !UIApplication.shared.supportsAlternateIcons {
            return
        }
        UIApplication.shared.setAlternateIconName(iconName) { (error) in
            if (error != nil) {
                print("更换app图标发生错误\n")
                print(error as Any)
            }else{
                print("已经完成了app图标的更换")
            }
        }
    }
    
}

