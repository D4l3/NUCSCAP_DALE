//
//  ViewControllerTwo.swift
//  FreshCatchPresentation
//
//  Created by Mike Dale on 3/2/18.
//  Copyright © 2018 Mike Dale. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewControllerTwo: UIViewController {
    //Anything that needs to be loaded prior to the screen showing up on the device.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //API key provided by Google to use the SDK for Google Maps
        GMSServices.provideAPIKey("AIzaSyBIpKFDxpxr7_poYFBF3w56YQUslU1cWr4")
        
        //Setting initial camera position on Gloucester Harbor, zoom level 13
        let camera = GMSCameraPosition.camera(withLatitude: 42.613444, longitude: -70.652833, zoom: 13)
        let MapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = MapView
        
        //Placing first marker at the center of Gloucester Harbor, using lat/lon
        let currentLocation = CLLocationCoordinate2DMake(42.613444, -70.652833)
        let marker = GMSMarker(position: currentLocation)
        marker.title = "Gloucester Harbor"
        marker.appearAnimation = GMSMarkerAnimation.pop
        marker.snippet = "Home of Commercial Fishing in Massachusetts"
        marker.map = MapView
        
        
        
        //Moving the camera view to the second marker.
        let firstFishLocation = CLLocationCoordinate2DMake(42.616240, -70.650823)
        MapView.camera = GMSCameraPosition.camera(withLatitude: firstFishLocation.latitude, longitude: firstFishLocation.longitude, zoom: 14)
        
        //Setting second marker, this time using the location variable instead of lat/lon
        let markerTwo = GMSMarker(position: firstFishLocation)
        markerTwo.title = "300LB Bluefin Tuna for Sale!"
        markerTwo.appearAnimation = GMSMarkerAnimation.pop
        markerTwo.snippet = "Going for $22/lb, Make me an offer!"
        markerTwo.map = MapView
        
        //Moving the camera view to the Third marker.

        let secondFishLocation = CLLocationCoordinate2DMake(42.611469, -70.658455)
        MapView.camera = GMSCameraPosition.camera(withLatitude: secondFishLocation.latitude, longitude: firstFishLocation.longitude, zoom: 14)
        
        //Setting third marker, this time using the location variable instead of lat/lon
        let markerThree = GMSMarker(position: secondFishLocation)
        markerThree.title = "Dozen Jumping Mullet"
        markerThree.appearAnimation = GMSMarkerAnimation.pop
        markerThree.snippet = "Free to a good home, bait fish."
        markerThree.map = MapView
        
        //Adding circle to with 400m radius around Gloucester Harbor
        let circleCenter = CLLocationCoordinate2D(latitude: 42.613444, longitude: -70.652833)
        let circ = GMSCircle(position: circleCenter, radius: 700)
        //Setting the circle to have a red tint, can be made darker by adjusting the alpha.
        circ.fillColor = UIColor(red: 3, green: 0, blue: 0, alpha: 0.20)
        circ.strokeColor = .red
        circ.strokeWidth = 5
        circ.map = MapView
        
        //Map code written based off of Instructional code on Google Maps SDK website:
        //https://developers.google.com/maps/documentation/ios-sdk/intro
        
    }
}
