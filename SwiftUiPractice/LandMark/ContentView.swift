//
//  ContentView.swift
//  SwiftUiPractice
//
//  Created by Papon Supamongkonchai on 21/3/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
