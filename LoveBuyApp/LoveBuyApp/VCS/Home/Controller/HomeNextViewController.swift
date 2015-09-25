//
//  HomeNextViewController.swift
//  LoveBuyApp
//
//  Created by Daniel on 15/9/25.
//  Copyright © 2015年 Daniel. All rights reserved.
//

import UIKit

class HomeNextViewController: BasicVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        let laber = self.createLabel()
        self.view.addSubview(laber)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createLabel() ->UILabel {
        
        let label:UILabel = UILabel(frame:CGRectMake(10,80,self.view.frame.size.width-20,50))
        
        label.backgroundColor=UIColor.clearColor()
        
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.blackColor()
        label.font = UIFont.systemFontOfSize(25)
        label.text = "Hello Swift"
        return label
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
