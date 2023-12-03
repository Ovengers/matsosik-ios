//
//  ContentView.swift
//  Matsosik
//
//  Created by Kdaramz on 11/22/23.
//

import SwiftUI
import NMapsMap

struct MSMapView: View {
    var body: some View {
        ZStack {
            NaverMapView()
                .ignoresSafeArea(edges: .all)
        }
    }
}

struct NaverMapView: UIViewRepresentable {
    func makeUIView(context: Context) -> NMFNaverMapView {
        let view = NMFNaverMapView()
        view.showZoomControls = false
        view.mapView.positionMode = .direction
        view.mapView.zoomLevel = 17

        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
