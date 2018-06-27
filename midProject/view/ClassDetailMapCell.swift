//
//  ClassDetailMapCell.swift
//  midProject
//
//  Created by csie on 2018/6/23.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit
import MapKit

class ClassDetailMapCell: UITableViewCell {

    @IBOutlet var mapView: MKMapView!
    
    func configure(WGS84Long: String, WGS84Lati: String) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocation(latitude: CLLocationDegrees(WGS84Lati)!, longitude: CLLocationDegrees(WGS84Long)!).coordinate
        self.mapView.addAnnotation(annotation)
        let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
        self.mapView.setRegion(region, animated: false)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
