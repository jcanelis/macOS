//
//  URLImage.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/10/21.
//

import SwiftUI
import Cocoa

typealias UIImage = NSImage

extension NSImage {
    var cgImage: CGImage? {
        var proposedRect = CGRect(origin: .zero, size: size)
        return cgImage(forProposedRect: &proposedRect, context: nil, hints: nil)
    }
    
    convenience init?(named name: String) {
        self.init(named: Name(name))
    }
}

struct URLImage: View {
    
    let url: URL
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: URL, placeholder: String = "photo") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }
    
    var body: some View {
        if let data = self.imageLoader.downloadedData {
            return Image(nsImage: UIImage(data: data)!).resizable() .aspectRatio(contentMode: .fit)
        } else {
            return Image(systemName: placeholder).resizable().aspectRatio(contentMode: .fit)
        }
    }
}
