//
//  MapData.swift
//  MapOverlayTest
//
//  Created by yushi hosokawa on 2019/10/06.
//  Copyright © 2019 yushi hosokawa. All rights reserved.

import UIKit
import MapKit

class MapData {
  var name: String?
  var boundary: [CLLocationCoordinate2D] = []
  
    var midCoordinate = CLLocationCoordinate2D(latitude: 35.709764, longitude: 139.523009)
    
  var overlayTopLeftCoordinate =  CLLocationCoordinate2D(latitude: 35.709764, longitude: 139.523009)
    
  var overlayTopRightCoordinate = CLLocationCoordinate2D(latitude: 35.709764, longitude: 139.523009)
    
  var overlayBottomLeftCoordinate = CLLocationCoordinate2D(latitude: 35.709764, longitude: 139.523009)
    
 var overlayBottomRightCoordinate: CLLocationCoordinate2D {
    get {
      return CLLocationCoordinate2DMake(overlayBottomLeftCoordinate.latitude,
                                        overlayTopRightCoordinate.longitude)
    }
  }
    
    
    //オーバーレイ座標に基づいて境界ボックスを作成するメソッド
 var overlayBoundingMapRect: MKMapRect {
    get {
        let topLeft = MKMapPoint(overlayTopLeftCoordinate)
        let topRight = MKMapPoint(overlayTopRightCoordinate)
        let bottomLeft = MKMapPoint(overlayBottomLeftCoordinate)
        
        return MKMapRect(
            x: topLeft.x,
            y: topLeft.y,
            width: fabs(topLeft.x - topRight.x),
            height: fabs(topLeft.y - bottomLeft.y))
    }
  }
    
    
 
    
  
    
}



