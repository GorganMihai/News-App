//
//  WebView.swift
//  H$xor News
//
//  Created by Mihai Gorgan on 27.06.2022.
//

import Foundation
import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
        
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
  
}
