//
//  DetailView.swift
//  prueba
//
//  Created by Wiliam Ochoa on 06/07/23.
//

import SwiftUI


struct appDetail: View {
    @EnvironmentObject var modelData: ModelData
    var app: Application

    var appIndex: Int {
        modelData.apps.firstIndex(where: { $0.id == app.id })!
    }

    var body: some View {
        ScrollView {
            RectangleImage(image: Image("portada"))
            
            VStack (alignment: .leading) {
                HStack {
                    RectangleImage(image: app.image)
                        .frame(width: 120, height: 120.0)
                    Spacer()
                    VStack (alignment: .leading) {
                        Text(app.name)
                            .font(.title)
                        Text(app.developer)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Text(app.description)
                            .font(.title3)
                            .lineLimit(3)
                        Text(app.price < 0.5 ? "FREE" : "$" + String(app.price))
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    
                }.padding()
                Divider()
                HStack (){
                    Spacer()
                    ForEach(0..<5){ index in
                        Label("", systemImage: index + 1 > app.stars ?  "star" : "star.fill")
                            .labelStyle(.iconOnly)
                            .foregroundColor(app.stars > 2 ? .green : .red)
                    }
                    Text(String(app.stars))
                        .foregroundColor(app.stars > 2 ? .green : .red)
                    Spacer()
                }
                Divider()
                VStack {
                    ForEach(app.comments, id:\.self ) {  commentario in
                        HStack {
                            CircleImage(image: Image("user"))
                            VStack (alignment: .leading){
                                Text(commentario.user)
                                    .font(.title2)
                                Text(commentario.comment)
                                    .lineLimit(2)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        Divider()
                    }
                }
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Text("Cerrar")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.gray)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("Instalar")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    })
                }
            }
            .padding(.horizontal, 16.0)
        }
        .navigationTitle(app.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct appDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        appDetail(app: modelData.apps[0])
            .environmentObject(modelData)
    }
}
