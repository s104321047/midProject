//
//  resource.swift
//  midProject
//
//  Created by csie on 2018/5/31.
//  Copyright © 2018年 csie. All rights reserved.
//

import Foundation

class plantSet {
    var CName:String    //中文名稱
    var SName:String    //學名
    var AName:String    //別名
    var location:String //分佈
    var characteristic:String  //特性
    var resourceLink:String    //資料連結
    var picLink:String         //圖片連結
    var image:String
    
    init(CName:String, SName:String, AName:String, location:String, characteristic:String, resourceLink:String, picLink:String, image:String) {
        self.CName = CName
        self.SName = SName
        self.AName = AName
        self.location = location
        self.characteristic = characteristic
        self.resourceLink = resourceLink
        self.picLink = picLink
        self.image = image
    }
    
    convenience init() {
        self.init(CName: "", SName: "", AName: "", location: "", characteristic: "", resourceLink: "", picLink: "", image: "")
    }
    
}

