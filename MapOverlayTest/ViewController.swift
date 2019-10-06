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

    var mapdata = MapData(filename: "MagicMountain")
    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad()  {
      super.viewDidLoad()
        
        let latDelta = mapdata.overlayTopLeftCoordinate.latitude - mapdata.overlayBottomRightCoordinate.latitude
        
        
      //スパンをテレビのサイズと考えて、1つのコーナーから別のコーナーまで測定
        let span = MKCoordinateSpan(latitudeDelta: fabs(latDelta), longitudeDelta: 0.0)
        let region = MKCoordinateRegion(center: mapdata.midCoordinate, span: span)
        
      MapView.region = region
    }

}

