//
//  ContentView.swift
//  prueba
//
//  Created by Wiliam Ochoa on 06/07/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                HStack(){
                    Image("logo")
                    Spacer()
                }.padding()
                List {

                    ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                        CategoryRow(categoryName: key, items: modelData.categories[key]!)
                        Spacer()
                    }
                    .listRowInsets(EdgeInsets())
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
