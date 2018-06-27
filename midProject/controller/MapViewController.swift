//
//  MapViewController.swift
//  midProject
//
//  Created by csie on 2018/6/27.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    var plants = plantSet()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let annotation = MKPointAnnotation()
        annotation.title = self.plants.CName
        annotation.subtitle = self.plants.SName
        annotation.coordinate = CLLocation(latitude: CLLocationDegrees(self.plants.WGS84Lati)!, longitude: CLLocationDegrees(self.plants.WGS84Long)!).coordinate
        self.mapView.addAnnotation(annotation)
        let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
        self.mapView.setRegion(region, animated: false)
        self.mapView.showAnnotations([annotation], animated: true)
        self.mapView.selectAnnotation(annotation, animated: true)
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
