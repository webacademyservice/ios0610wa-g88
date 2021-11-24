//
//  ViewController.swift
//  Lesson 12
//
//  Created by Alexander on 22.11.2021.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.mapType = .hybrid
        
        let coordinate = CLLocationCoordinate2D(latitude: 50.43114249143462,
                                                longitude: 30.523065593307965)
        
        mapView.region = MKCoordinateRegion(center: coordinate,
                                            latitudinalMeters: 1000,
                                            longitudinalMeters:  1000)
        
        
        self.mapView.showsScale = true
        
        self.mapView.showsCompass = true
        self.mapView.showsTraffic = true
        self.mapView.showsBuildings = true
        self.mapView.isRotateEnabled = true
        self.mapView.isZoomEnabled = true
        
    }
    
    
}

