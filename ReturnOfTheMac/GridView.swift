//
//  GridView.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/6/21.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        ScrollView {
            let rows: [GridItem] = Array(repeating: .init(.fixed(48)), count: 12)
            LazyHGrid(rows: rows, alignment: .top) {
                ForEach(0..<24) { item in
                    Text("😂").font(.title)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct CrazyView: View {
    var body: some View {
        Text("wiw nice")
    }
}



struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
