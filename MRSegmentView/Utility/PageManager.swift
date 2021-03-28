//
//  PageManager.swift
//  MRSegmentView
//
//  Created by Mahesh Rathod on 26/03/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct PageManager<Content: View>: View {
    let pageCount: Int
    @Binding var selectedPageIndex: Int
    let content: Content
    
    init(pageCount: Int, selectedPageIndex: Binding<Int>, @ViewBuilder content: () -> Content) {
        self.pageCount = pageCount
        self._selectedPageIndex = selectedPageIndex
        self.content = content()
    }
    
    @GestureState private var translation: CGFloat = 0
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                self.content.frame(width: geometry.size.width)
            }
            .frame(width: geometry.size.width, alignment: .leading)
            .offset(x: -CGFloat(self.selectedPageIndex) * geometry.size.width)
            .animation(.easeInOut(duration: 0.2))
            .offset(x: self.translation)
        }
    }
}
