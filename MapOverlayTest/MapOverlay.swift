//
//  MapOverlay.swift
//  MapOverlayTest
//
//  Created by yushi hosokawa on 2019/10/04.
//  Copyright © 2019 yushi hosokawa. All rights reserved.
//
import UIKit
import MapKit





class MapOverlay: NSObject, MKOverlay {
  var coordinate: CLLocationCoordinate2D
  var boundingMapRect: MKMapRect
   // var midCoodinate = CLLocationCoordinate2D()

    init(MapData : MapData) {
        coordinate = MapData.midCoordinate
        boundingMapRect = MapData.overlayBoundingMapRect
    }
}
