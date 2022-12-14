//  Sam Security Developer Ltda
//  UberMapViewRepresentable.swift
//  uber clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 29/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI
import MapKit

struct UberMapViewRepresentable: UIViewRepresentable {
    // MARK: - Propriedade
    
    let mapView = MKMapView()
    let locationManager = LocationManager()
    
    // MARK: - Função
    func makeUIView(context: Context) -> some UIView {
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}

// MARK: - Extensão
extension UberMapViewRepresentable {
    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: UberMapViewRepresentable
        
        init(parent: UberMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
            
            parent.mapView.setRegion(region, animated: true)
        }
    }
}

