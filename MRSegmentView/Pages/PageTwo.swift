//
//  PageTwo.swift
//  MRSegmentView
//
//  Created by Mahesh Rathod on 27/03/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct PageTwo: View {
    
    // need to add code in iOS 14
    init() {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().separatorStyle = .none
        }
    }
    
    
    var body: some View {
        List{
            ForEach(0..<20) { item in
                HStack(alignment: .center, spacing: 16) {
                    Image(systemName: "cloud.heavyrain.fill")
                        .font(.body)
                    Text("item " + "\(item)").font(.body)
                }
            }
        }
    }
}

struct PageTwo_Previews: PreviewProvider {
    static var previews: some View {
        PageTwo()
    }
}
