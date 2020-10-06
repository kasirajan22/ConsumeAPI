//
//  ContentView.swift
//  ConsumeAPI
//
//  Created by Magizhan on 04/10/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager();
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                HStack{
                    NavigationLink(
                        destination: DetailView(url: post.url),
                        label: {
                            Text(String(post.points))
                            Text(post.title)
                        })
                
                }
            }.onAppear {
                self.networkManager.fetchData()
            }
            .navigationTitle("News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
