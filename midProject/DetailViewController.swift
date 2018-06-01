//
//  DetailViewController.swift
//  midProject
//
//  Created by csie on 2018/5/4.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ClassDetailTextCell.self), for:indexPath) as! ClassDetailTextCell
            cell.titleLabel.text = "別名"
            cell.detailLabel.text = plant.AName
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ClassDetailTextCell.self), for:indexPath) as! ClassDetailTextCell
            cell.titleLabel.text = "分布"
            cell.detailLabel.text = plant.location
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ClassDetailTextCell.self), for:indexPath) as! ClassDetailTextCell
            cell.titleLabel.text = "特性"
            cell.detailLabel.text = plant.characteristic
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ClassDetailIconCell.self), for:indexPath) as! ClassDetailIconCell
            //cell.iconTitle.text = "更多介紹"
            cell.iconImageView.image = UIImage(named: "link")
            cell.iconLink.text = plant.picLink
            return cell
        /*
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ClassDetailIconCell.self), for:indexPath) as! ClassDetailIconCell
            cell.iconTitle.text = "更多圖片"
            cell.iconImageView.image = UIImage(named: "book")
            return cell
        */
        default:
            fatalError("Failed to instantiate the table view cell")
        }
    }
    

    //@IBOutlet var detailImageView: UIImageView!
    //var detailImageName = ""
    var plant: plantSet = plantSet()
    @IBOutlet var headerView: ClassDetailHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //detailImageView.image = UIImage(named: plantSet.image)
        // Do any additional setup after loading the view.
        headerView.headerImageView.image = UIImage(named: plant.image)
        headerView.CNameLabel.text = plant.CName
        headerView.SNameLabel.text = plant.SName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

            

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    

}
