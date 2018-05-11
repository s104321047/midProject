//
//  DetailViewController.swift
//  midProject
//
//  Created by csie on 2018/5/4.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var detailImageView: UIImageView!
    var detailImageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImageView.image = UIImage(named: detailImageName)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

            

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    

}
