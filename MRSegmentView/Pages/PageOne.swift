//
//  PageOne.swift
//  MRSegmentView
//
//  Created by Mahesh Rathod on 26/03/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct PageOne: View {
    var body: some View {
        ZStack {
            Color(UIColor.white).edgesIgnoringSafeArea(.all)
            ScrollView {
                ForEach(0..<30) { item in
                    HStack{
                        Text("item " + "\(item)")
                        .padding()
                         Spacer()
                    }
                    
                }
            }
        }
    }
}

struct PageOne_Previews: PreviewProvider {
    static var previews: some View {
        PageOne()
    }
}
