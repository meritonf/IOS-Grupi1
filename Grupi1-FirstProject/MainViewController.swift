//
//  MainViewController.swift
//  Grupi1-FirstProject
//
//  Created by Cacttus Education 05 on 2/24/18.
//  Copyright © 2018 Cacttus Education 05. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var firstLbl: UILabel!
    @IBOutlet weak var secondLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func SearchControllerBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "searchViewSegue", sender: self)
    }
    

    
    // MARK: - Navigations

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let searchVC = segue.destination as?  SearchViewController
        let txtConcatenate = firstLbl.text! + " " + secondLbl.text!
        searchVC?.labelsPassed = txtConcatenate
    }
    

}
