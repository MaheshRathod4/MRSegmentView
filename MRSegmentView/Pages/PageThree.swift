//
//  PageThree.swift
//  MRSegmentView
//
//  Created by Mahesh Rathod on 27/03/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct PageThree: View {
    var body: some View {
        
        ZStack{
            Color(Constant.Colors.primary)
            
            VStack(alignment: .center, spacing: 0) {
                Image("Logo")
                    .resizable()
                    .frame(width: 120, height: 120, alignment: .center)
            }
        }.padding(.top,4)
    }
}

struct PageThree_Previews: PreviewProvider {
    static var previews: some View {
        PageThree()
    }
}
