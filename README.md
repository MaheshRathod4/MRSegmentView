# MRSegmentView
Custom segmentview in swiftUI

How to use

Create var something list this

 @State var currentPage = 0
    @State var isSelectTab:Bool = false
    // your tab and icon
    @State var tabs = [
        Tab(title: "Tab 1", icon: "folder.fill", isSelect: true),
        Tab(title: "Tab 2", icon: "folder.fill", isSelect: false),
        Tab(title: "Tab 3", icon: "folder.fill", isSelect: false)
    ]
