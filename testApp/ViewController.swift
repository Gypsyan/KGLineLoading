//
//  ViewController.swift
//  testApp
//
//  Created by Anantha Krishnan K G on 11/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit
import KGLineLoading
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let kk = KGLineLoading( frame: CGRect(origin: CGPoint(x: 0, y: 150), size: CGSize(width: self.view.frame.size.width, height: 8)))
        kk.backgroundLineColor = UIColor.yellow
        kk.backgroundLoaderColor = UIColor.brown
        self.view.addSubview(kk)
        kk.startAnimation()
        //
    }
    @IBOutlet var ff: KGLineLoading!
    var gg:Bool = false

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dsfsd(_ sender: AnyObject) {
        if !gg{
            gg = true
            ff.startAnimation()
        }else{
             gg = false
            ff.stopAnimation()
        }
        
    }

}

