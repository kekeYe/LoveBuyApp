//
//  HomeController.swift
//  LoveBuyApp
//
//  Created by Daniel on 15/9/25.
//  Copyright © 2015年 Daniel. All rights reserved.
//

import UIKit

class HomeController: BasicVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.addSubview(self.createButton())
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        let hVC = HomeNextViewController()
//        self.navigationController?.pushViewController(hVC, animated: true)
//    }

    func createButton() ->UIButton {
        let button:UIButton = UIButton(frame:CGRectMake(100,100,100,40))
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("Button", forState:UIControlState.Normal)
        button.titleLabel!.font = UIFont.systemFontOfSize(12)
        button.addTarget(self, action:"tappedButton", forControlEvents:UIControlEvents.TouchUpInside)
        button.tag = 100
        return button
    }
    
    func tappedButton(){
        let hVC = HomeNextViewController()
        self.navigationController?.pushViewController(hVC, animated: false)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
