//
//  CategoryItem.swift
//  prueba
//
//  Created by Wiliam Ochoa on 06/07/23.
//

import SwiftUI
struct CategoryItem: View {
    var app: Application

    var body: some View {
        VStack(alignment: .leading) {
            app.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(5)
            Text(app.name)
                .foregroundColor(.primary)
                .font(.title)
            Text(app.developer)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Spacer()
            Text(app.price < 0.5 ? "FREE" : "$" + String(app.price))
                .foregroundColor(.primary)
                .font(.title3)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(app: ModelData().apps[1])
    }
}
