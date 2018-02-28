//
//  HomeViewController.swift
//  Grupi1-FirstProject
//
//  Created by Cacttus Education 05 on 2/27/18.
//  Copyright © 2018 Cacttus Education 05. All rights reserved.
//
import Foundation
import UIKit

class HomeViewController: UIViewController {
   
    @IBOutlet weak var lblchange: UILabel!
    @IBOutlet weak var BlueSq: UIView!
    
    @IBOutlet var BlueSqTapGesture: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BlueSqTapGesture = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.uiViewTap(_:)))
        BlueSqTapGesture.numberOfTapsRequired = 4
        
        BlueSq.addGestureRecognizer(BlueSqTapGesture)
        BlueSq.isUserInteractionEnabled = true
    }
    @objc func uiViewTap(_ sender: UITapGestureRecognizer) {
        if self.BlueSq.backgroundColor == UIColor.yellow {
            self.BlueSq.backgroundColor = UIColor.green
            lblchange.text="Green"
        }else{
            self.BlueSq.backgroundColor = UIColor.yellow
            lblchange.text="Yellow"
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
