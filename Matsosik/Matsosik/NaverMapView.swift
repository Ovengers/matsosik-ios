//
//  NaverMapView.swift
//  Matsosik
//
//  Created by Kdaramz on 12/24/23.
//

import SwiftUI
import CoreLocationUI
import NMapsMap

struct NaverMapView: UIViewRepresentable {
    func makeUIView(context: Context) -> NMFNaverMapView {
        let view = NMFNaverMapView()
        view.mapView.touchDelegate = context.coordinator

        applyMapAttributes(view: view)
        applyMapViewAttributes(mapView: view.mapView)

        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }

    func makeCoordinator() -> Coordinator {
        Coordinator(target: self)
    }
}

// MARK: - Extension
extension NaverMapView {
    class Coordinator: NSObject, NMFMapViewTouchDelegate {
        var target: NaverMapView

        lazy var marker = NMFMarker()

        init(target: NaverMapView) {
            self.target = target
        }

        /// 정확하게 심볼이 탭하면 호출
        func mapView(_ mapView: NMFMapView, didTap symbol: NMFSymbol) -> Bool {
            marker.position = symbol.position
            marker.mapView = mapView
            return true
        }

        /// 심볼이 아닌 지도를 탭하면 호출
        func mapView(_ mapView: NMFMapView, didTapMap latlng: NMGLatLng, point: CGPoint) {
            marker.mapView = nil
        }
    }
}

private extension NaverMapView {
    func applyMapAttributes(view: NMFNaverMapView) {
        view.showZoomControls = false
        view.showIndoorLevelPicker = true
        view.showLocationButton = true
    }

    func applyMapViewAttributes(mapView: NMFMapView) {
        mapView.positionMode = .direction
        mapView.zoomLevel = 17
        mapView.allowsTilting = false
        mapView.setLayerGroup("NMF_LAYER_GROUP_TRANSIT", isEnabled: true)
        mapView.isIndoorMapEnabled = true
        mapView.positionMode = .direction
        setLocationOverlay(from: mapView.locationOverlay)
    }

    func setLocationOverlay(from locationOverlay: NMFLocationOverlay) {
        locationOverlay.location = NMGLatLng(lat: 37.489972, lng: 127.0051895)
    }
}
