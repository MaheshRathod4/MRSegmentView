//
//  ContentView.swift
//  MRSegmentView
//
//  Created by Mahesh Rathod on 26/03/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
           if #available(iOS 14.0, *) {
              
           } else {
               UITableView.appearance().separatorStyle = .none
           }
       }

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: SimpleExample()) {
                    Text("Simple")
                }
                NavigationLink(destination: SimpleWithIconExample()) {
                    Text("Simple With Icon")
                }
                NavigationLink(destination: BottomLineExample()) {
                    Text("BottomLine")
                }
                NavigationLink(destination: BottomLineWithIconExample_()) {
                    Text("BottomLine With Icon")
                }
                NavigationLink(destination: CapsuleBkExample()) {
                    Text("Capsule Background")
                }
                NavigationLink(destination: CapsuleBkWithIconExample()) {
                    Text("Capsule Background With Icon")
                }
            }
            .navigationBarTitle("MRSegmentView", displayMode: .inline)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
