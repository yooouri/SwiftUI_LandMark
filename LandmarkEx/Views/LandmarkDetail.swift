//
//  LandmarkDetail.swift
//  LandmarkEx
//
//  Created by yuri on 2022/11/10.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView{
          
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y:-130)
                    .padding(.bottom, -130)
                InfoView(landmark: landmark)
            
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.large)
//        .ignoresSafeArea(edges: .top)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
