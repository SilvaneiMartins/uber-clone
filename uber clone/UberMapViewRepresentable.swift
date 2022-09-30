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
    }
}

