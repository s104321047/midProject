//
//	RootClass.swift
//
//	Create by csie on 31/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct RootClass : Codable {

	let 十字花科 : [plant]?
	let 桑科 : [plant]?
	let 榆科 : [plant]?
	let 芸香科 : [plant]?
	let 茜草科 : [plant]?
	let 馬鞭草科 : [plant]?


	enum CodingKeys: String, CodingKey {
		case 十字花科 = "十字花科"
		case 桑科 = "桑科"
		case 榆科 = "榆科"
		case 芸香科 = "芸香科"
		case 茜草科 = "茜草科"
		case 馬鞭草科 = "馬鞭草科"
	}
    
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		十字花科 = try values.decodeIfPresent([plant].self, forKey: .十字花科)
		桑科 = try values.decodeIfPresent([plant].self, forKey: .桑科)
		榆科 = try values.decodeIfPresent([plant].self, forKey: .榆科)
		芸香科 = try values.decodeIfPresent([plant].self, forKey: .芸香科)
		茜草科 = try values.decodeIfPresent([plant].self, forKey: .茜草科)
		馬鞭草科 = try values.decodeIfPresent([plant].self, forKey: .馬鞭草科)
	}


}
