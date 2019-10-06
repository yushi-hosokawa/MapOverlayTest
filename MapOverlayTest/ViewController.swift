//
//  ViewController.swift
//  MapOverlayTest
//
//  Created by yushi hosokawa on 2019/10/02.
//  Copyright © 2019 yushi hosokawa. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

extension ViewController: MKMapViewDelegate {
}


class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad()  {
      super.viewDidLoad()
        
        let location:CLLocationCoordinate2D
            = CLLocationCoordinate2DMake(35.709764,139.523009)
        
        MapView.setCenter(location,animated:true)
        
        var region:MKCoordinateRegion = MapView.region
        region.center = location
        region.span.latitudeDelta = 0.005
        region.span.longitudeDelta = 0.005
        
        MapView.setRegion(region,animated:true)
        
      //スパンをテレビのサイズと考えて、1つのコーナーから別のコーナーまで測定
            /*let span = MKCoordinateSpan(latitudeDelta: fabs(latDelta), longitudeDelta: 0.0)
        let region = MKCoordinateRegion(center: mapdata.midCoordinate, span: span)
        
      MapView.region = region
 
 */
    }

}

