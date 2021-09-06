//
//  SwitchView.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/6/21.
//

import SwiftUI

struct SwitchView: View {
    
    var item: Product!
    
    var body: some View {
        ScrollView {
            ForEach(item.photos!, id: \.self) { photo in
                AsyncImage(url: photo.url!) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color("Grey")
                }
            }
        }
        .tabItem({
            Image(systemName: "play.rectangle")
            Text("Images")
        })
        .tag(0)
    }
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}
