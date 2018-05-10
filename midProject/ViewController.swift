//
//  ViewController.swift
//  midProject
//
//  Created by csie on 2018/5/3.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showClassList(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showClassList", sender: sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = .lightContent
        //setupNavBar()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let ListArray = [["油菜", "葶藶", "蔊菜", "獨行菜", "薺"],
                     ["山黃麻", "石朴", "沙朴", "沙楠子樹", "阿里山榆"],
                     ["山黃梔", "水金京", "水錦樹", "玉葉金花", "南投涼喉茶"],
                     ["大青", "杜虹花", "金露花", "海州常山果", "臭娘子"],
                     ["九重吹", "小葉桑", "天仙果", "牛奶榕", "雀榕", "菲律檳榕", "稜果榕", "榕樹", "澀葉榕"],
                     ["三腳鱉", "山黃皮", "石苓舅", "胡椒木", "飛龍掌血", "賊仔樹", "過山香", "橘柑", "檸檬", "雙面刺", "藤花椒"]
                    ]
    
    let ImageArray = [["油菜", "葶藶", "蔊菜", "獨行菜", "薺"],
                      ["山黃麻", "石朴", "沙朴", "沙楠子樹", "阿里山榆"],
                      ["山黃梔", "水金京", "水錦樹", "玉葉金花", "南投涼喉茶"],
                      ["大青", "杜虹花", "金露花", "海州常山果", "臭娘子"],
                      ["九重吹", "小葉桑", "天仙果", "牛奶榕", "雀榕", "菲律檳榕", "稜果榕", "榕樹", "澀葉榕"],
                      ["三腳鱉", "山黃皮", "石苓舅", "胡椒木", "飛龍掌血", "賊仔樹", "過山香", "橘柑", "檸檬", "雙面刺", "藤花椒"]
                     ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tag = sender as! Int
        let destinationController = segue.destination as! ClassTableViewController
        destinationController.getClassList = ListArray[tag]
        destinationController.getClassImage = ImageArray[tag]
        switch tag {
        case 0:
            destinationController.getClassURL = ["https://butterfly-foodplants.blogspot.tw/2013/12/blog-post_2972.html",
                                                 "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post_1.html",
                                                 "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post.html",
                                                 "https://butterfly-foodplants.blogspot.tw/2014/05/blog-post_8716.html",
                                                 "https://butterfly-foodplants.blogspot.tw/2014/01/blog-post_7173.html"]
        case 1:
            destinationController.getClassURL = ["https://butterfly-foodplants.blogspot.tw/2013/03/blog-post_8995.html",
                                                 "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post_326.html",
                                                 "https://butterfly-foodplants.blogspot.tw/2013/05/blog-post_8700.html",
                                                 "https://butterfly-foodplants.blogspot.tw/2013/05/blog-post_5308.html",
                                                 "https://butterfly-foodplants.blogspot.tw/2018/04/ulmus-uyematsui-hayata.html"]
        case 2:
            destinationController.getClassURL = ["https://butterfly-foodplants.blogspot.tw/2013/01/blog-post_29.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post_2028.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/03/blog-post_1.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/11/blog-post_1632.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/09/blog-post_9.html"]
        case 3:
            destinationController.getClassURL = ["https://butterfly-foodplants.blogspot.tw/2013/08/blog-post.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/05/blog-post_4305.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/09/blog-post_16.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/04/blog-post_22.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/06/blog-post_2715.html"]
        case 4:
            destinationController.getClassURL = ["https://butterfly-foodplants.blogspot.tw/2014/03/blog-post_16.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/04/blog-post_20.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2014/04/blog-post_26.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/05/blog-post_1238.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2014/01/blog-post_27.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2014/07/ficus-ampelas-burm-f-1768.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/05/blog-post_26.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/12/blog-post_15.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post_24.html"]
        case 5:
            destinationController.getClassURL = ["https://butterfly-foodplants.blogspot.tw/2013/09/blog-post_8.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2014/10/murraya-euchrestifolia-hayata-1916.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2014/03/blog-post_15.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/12/blog-post_31.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post_27.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2014/07/blog-post.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/05/blog-post_9632.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2014/05/blog-post_21.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2014/01/blog-post_25.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post_23.html",
                                                   "https://butterfly-foodplants.blogspot.tw/2016/05/zanthoxylum-scandens-blume.html"]
        default:
            break
        }
        
    }


}

