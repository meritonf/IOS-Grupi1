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
    @IBOutlet weak var BlueRect: UIView!
    
    @IBOutlet var BlueRectTapGesture: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BlueRectTapGesture = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.myviewTapped(_:)))
        BlueRectTapGesture.numberOfTapsRequired = 4
        
        BlueRect.addGestureRecognizer(BlueRectTapGesture)
        BlueRect.isUserInteractionEnabled = true
    }
    @objc func myviewTapped(_ sender: UITapGestureRecognizer) {
        if self.BlueRect.backgroundColor == UIColor.yellow {
            self.BlueRect.backgroundColor = UIColor.green
            lblchange.text="Green"
        }else{
            self.BlueRect.backgroundColor = UIColor.yellow
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
