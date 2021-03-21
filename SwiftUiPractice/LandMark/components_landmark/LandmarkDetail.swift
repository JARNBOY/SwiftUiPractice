//
//  LandmarkDetail.swift
//  SwiftUiPractice
//
//  Created by Papon Supamongkonchai on 21/3/2564 BE.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                    
                    .frame(height: 300)
                
                CircleImage(img: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom , -130)
                
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
                
                Spacer()
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
