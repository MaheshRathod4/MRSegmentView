# MRSegmentView
Custom segmentview in swiftUI

 ![demo](https://user-images.githubusercontent.com/68275505/112741222-4d0aeb80-8fa1-11eb-8b1d-1ee071aeccb7.gif)

How to use 

var struct BottomLineExample: View {  

    @State var currentPage = 0
    //create array of tab
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
                // add tabs with style
                    TabStyles(tabStyle: .bottomLine, onSelect: {
                       self.selectTab(indexOfSelectedTab: 0)
                        self.currentPage = 0
                    }, tab: tabs[0])
                    TabStyles(tabStyle: .bottomLine, onSelect: {
                        self.selectTab(indexOfSelectedTab: 1)
                        self.currentPage = 1
                    }, tab: tabs[1])
                    TabStyles(tabStyle: .bottomLine, onSelect: {
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
