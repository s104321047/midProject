//
//  ViewController.swift
//  midProject
//
//  Created by csie on 2018/5/3.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDataDelegate {

    @IBAction func showClassList(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showClassList", sender: sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = .lightContent
        //setupNavBar()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "http://opendata.epa.gov.tw/ws/Data/FBPlant/?$skip=0&$top=1000&format=json")
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config, delegate: self, delegateQueue: nil)
        let dataTask = session.dataTask(with: url!)
        dataTask.resume()
    }
    
    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse, completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
        
    }
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tag = sender as! Int
        let destinationController = segue.destination as! ClassTableViewController
        switch tag {
        case 0:
            destinationController.tag = 0
        case 1:
            destinationController.tag = 1
        case 2:
            destinationController.tag = 2
        case 3:
            destinationController.tag = 3
        case 4:
            destinationController.tag = 4
        case 5:
            destinationController.tag = 5
        default:
            break
        }
        
    }
 
}

