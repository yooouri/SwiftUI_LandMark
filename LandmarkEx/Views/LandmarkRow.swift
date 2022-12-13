//
//  LandmarkRow.swift
//  LandmarkEx
//
//  Created by yuri on 2022/11/10.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                Text(landmark.park)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
            
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
