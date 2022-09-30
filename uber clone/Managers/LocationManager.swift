//  Sam Security Developer Ltda
//  LocationManager.swift
//  uber clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 29/09/22.
//  silvaneimartins_rcc@hotmail.com

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    
    override init() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
