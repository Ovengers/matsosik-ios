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
        TabView {
            NaverMapView()
                .ignoresSafeArea(edges: [.top, .horizontal])
                .tabItem {
                    Label("지도 뷰", systemImage: "tray.and.arrow.up.fill")
                }
            NaverMapView()
                .tabItem {
                    Label("리스트 뷰", systemImage: "list.bullet")
                }
        }
    }
}
