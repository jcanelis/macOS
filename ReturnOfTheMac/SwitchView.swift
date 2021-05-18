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
                URLImage(url: photo.url!)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .animation(.linear)
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
