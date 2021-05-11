//
//  ListView.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/10/21.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var products = GetProducts()
    
    var body: some View {
        List(products.products) { product in
            NavigationLink(destination: DetailView(item: product)) {
                Image(systemName: "play.rectangle")
                Text("\(product.title!)")
            }
            .padding(.all, 8.0)
        }
        .listStyle(SidebarListStyle())
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button(
                    action: {
                        toggleSidebar()
                    },
                    label: { Image(systemName: "sidebar.left") }
                )
            }
        }
        .onAppear {
            products.getProducts()
        }
    }
}

private func toggleSidebar() {
    NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
