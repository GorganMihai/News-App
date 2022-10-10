//
//  ContentView.swift
//  H$xor News
//
//  Created by Mihai Gorgan on 24.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView(){
            List(networkManager.posts) { pst in
                NavigationLink(destination: DetailView(url: pst.url)) {
                    HStack {
                        Text(String(pst.points))
                        Text(pst.title)
                    }
                }
                
                
            }
            .navigationTitle("HACKER NEWS")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


