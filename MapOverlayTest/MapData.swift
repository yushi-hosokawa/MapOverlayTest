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
  
  var midCoordinate = CLLocationCoordinate2D()
  var overlayTopLeftCoordinate = CLLocationCoordinate2D()
  var overlayTopRightCoordinate = CLLocationCoordinate2D()
  var overlayBottomLeftCoordinate = CLLocationCoordinate2D()
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



