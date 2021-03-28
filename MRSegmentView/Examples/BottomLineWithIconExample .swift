//
//  BottomLineWithIconExample .swift
//  MRSegmentView
//
//  Created by Mahesh Rathod on 27/03/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct BottomLineWithIconExample_: View {
    
    @State var currentPage = 0
    @State var tabs = [
        Tab(title: "Tab 1", icon: "folder.fill", isSelect: true),
        Tab(title: "Tab 2", icon: "folder.fill", isSelect: false),
        Tab(title: "Tab 3", icon: "folder.fill", isSelect: false)
    ]
    
    func selectTab(indexOfSelectedTab:Int) {
        for (index,_) in tabs.enumerated() {
            self.tabs[index].isSelect = indexOfSelectedTab == index
        }
    }
    
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 32) {
                    TabStyles(tabStyle: .bottomLineWithIcon, onSelect: {
                        self.selectTab(indexOfSelectedTab: 0)
                        self.currentPage = 0
                    }, tab: tabs[0])
                    TabStyles(tabStyle: .bottomLineWithIcon, onSelect: {
                        self.selectTab(indexOfSelectedTab: 1)
                        self.currentPage = 1
                    }, tab: tabs[1])
                    TabStyles(tabStyle: .bottomLineWithIcon, onSelect: {
                        self.selectTab(indexOfSelectedTab: 2)
                        self.currentPage = 2
                    }, tab: tabs[2])
                }.padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
            }
            
            PageManager(pageCount: tabs.count, selectedPageIndex: self.$currentPage) {
                PageOne()
                PageTwo()
                PageThree()
            }
        }
    }
}

struct BottomLineWithIconExample__Previews: PreviewProvider {
    static var previews: some View {
        BottomLineWithIconExample_()
    }
}
