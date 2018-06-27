//
//	plant.swift
//
//	Create by csie on 31/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct plant : Codable {

	let 中文名稱 : String?
	let 分布 : String?
	let 別名 : String?
	let 圖片 : String?
	let 學名 : String?
	let 特性 : String?
	let 資料連結 : String?


	enum CodingKeys: String, CodingKey {
		case 中文名稱 = "中文名稱"
		case 分布 = "分布"
		case 別名 = "別名"
		case 圖片 = "圖片"
		case 學名 = "學名"
		case 特性 = "特性"
		case 資料連結 = "資料連結"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		中文名稱 = try values.decodeIfPresent(String.self, forKey: .中文名稱)
		分布 = try values.decodeIfPresent(String.self, forKey: .分布)
		別名 = try values.decodeIfPresent(String.self, forKey: .別名)
		圖片 = try values.decodeIfPresent(String.self, forKey: .圖片)
		學名 = try values.decodeIfPresent(String.self, forKey: .學名)
		特性 = try values.decodeIfPresent(String.self, forKey: .特性)
		資料連結 = try values.decodeIfPresent(String.self, forKey: .資料連結)
	}


}
