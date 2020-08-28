//
//  MusicCategoryView.swift
//  Spotify
//
//  Created by Jack on 24/08/20.
//  Copyright © 2020 xyz. All rights reserved.
//

import SwiftUI

struct DataModel: Identifiable {
    let id: String
    let title: String
    let artistImage: String
}

struct MusicCategoryView: View {
    
    let data: [DataModel] = [
        .init(id: "0", title: "Hindi", artistImage: "icon_tamil"),
        .init(id: "1", title: "English", artistImage: "icon_tamil"),
        .init(id: "2", title: "Punjabi", artistImage: "icon_tamil"),
        .init(id: "3", title: "Tamil", artistImage: "icon_tamil"),
        .init(id: "4", title: "Telugu", artistImage: "icon_tamil"),
        .init(id: "5", title: "Malayalam", artistImage: "icon_tamil"),
        .init(id: "6", title: "Marathi", artistImage: "icon_tamil"),
        .init(id: "7", title: "Gujarati", artistImage: "icon_tamil"),
        .init(id: "8", title: "Bengali", artistImage: "icon_tamil"),
        .init(id: "9", title: "Kannada", artistImage: "icon_tamil")
    ]
    
    var body: some View {
        List {
            ForEach(0..<data.count/2) { i in
                CollectionView(data: self.data[i])
            }
        }
        //.navigationBarTitle("What music do you like?").font(.body)
    }
}

struct CollectionView: View {
    let data: DataModel
    let bounds = UIScreen.main.bounds
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 20) {
                
                ForEach(0..<2) { items in
                    VStack(spacing: 12) {
                        Image(self.data.artistImage)
                            .resizable()
                            .frame(width: (self.bounds.width-40)/2.0, height: (self.bounds.width-80)/2.0)
                            .foregroundColor(.yellow)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                        Text(self.data.title).multilineTextAlignment(.center)
                    }
                }
            }
        }
    }
}

struct MusicCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        MusicCategoryView()
    }
}
