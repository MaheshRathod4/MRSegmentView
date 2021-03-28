//
//  TabStyles.swift
//  MRSegmentView
//
//  Created by Mahesh Rathod on 27/03/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

enum TabStyle {
    case simple
    case simpleWithIcon
    case bottomLine
    case bottomLineWithIcon
    case capsuleBackground
    case capsuleBackgroundWithIcon
}

struct TabStyles: View {
    
    var tabStyle = TabStyle.simple
    var onSelect:() -> Void
    var tab = Tab(title: "One", icon: "folder.fill", isSelect: true)
    
    var body: some View {
        
        VStack {
            if tabStyle == .simple {
                SimpleTab(onSelect: {
                    self.onSelect()
                }, tab: tab)
            } else if tabStyle == .bottomLine {
                BottomLineTab(onSelect: {
                    self.onSelect()
                }, tab: tab)
            } else if tabStyle == .simpleWithIcon {
                SimpleWithIconTab(onSelect: {
                    self.onSelect()
                }, tab: tab)
            } else if tabStyle == .bottomLineWithIcon {
                BottomLineWithIconTab(onSelect: {
                    self.onSelect()
                }, tab: tab)
            } else if tabStyle == .capsuleBackground {
                CapsuleTab(onSelect: {
                    self.onSelect()
                }, tab: tab)
            } else if tabStyle == .capsuleBackgroundWithIcon {
                CapsuleWithImageTab(onSelect: {
                    self.onSelect()
                }, tab: tab)
            }
        }
    }
}

struct SimpleTab: View {
    
    var onSelect:() -> Void
    var tab = Tab(title: "One", icon: "folder.fill", isSelect: true)
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Text(tab.title)
                .font(.system(size: 16, weight: self.tab.isSelect ? .heavy : .regular, design: .default))
                .foregroundColor(self.tab.isSelect == true ? Color(Constant.Colors.primary) : .gray)
                
                .onTapGesture {
                    self.onSelect()
            }
            .fixedSize()
        }
    }
}

struct BottomLineTab: View {
    
    var onSelect:() -> Void
    var tab = Tab(title: "One", icon: "folder.fill", isSelect: true)
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 8) {
                Text(tab.title)
                    .font(.system(size: 16, weight: self.tab.isSelect ? .heavy : .regular, design: .default))
                    .foregroundColor(self.tab.isSelect == true ? Color(Constant.Colors.primary) : .gray)
                    
                    .onTapGesture {
                        self.onSelect()
                }
                if tab.isSelect {
                    Rectangle()
                        .foregroundColor(Color(Constant.Colors.primary))
                        .frame(height: (2.0))
                        .cornerRadius(2)
                }
            }
            .fixedSize()
        }
    }
}

struct SimpleWithIconTab: View {
    
    var onSelect:() -> Void
    var tab = Tab(title: "One", icon: "folder.fill", isSelect: true)
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Image(systemName: tab.icon)
                .resizable()
                .frame(width: 16, height: 16, alignment: .center)
                .foregroundColor(self.tab.isSelect == true ? Color(Constant.Colors.primary) : .gray)
            Text(tab.title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(self.tab.isSelect == true ? Color(Constant.Colors.primary) : .gray)
                .fixedSize()
        }.onTapGesture {
            self.onSelect()
        }
    }
}

struct BottomLineWithIconTab: View {
    
    var onSelect:() -> Void
    var tab = Tab(title: "One", icon: "folder.fill", isSelect: true)
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 8) {
                HStack(alignment: .center, spacing: 8) {
                    Image(systemName: tab.icon)
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                        .foregroundColor(self.tab.isSelect == true ? Color(Constant.Colors.primary) : .gray)
                    Text(tab.title)
                        .font(.system(size: 16, weight: self.tab.isSelect ? .heavy : .regular, design: .default))
                        .foregroundColor(self.tab.isSelect == true ? Color(Constant.Colors.primary) : .gray)
                }
                if tab.isSelect {
                    Rectangle()
                        .foregroundColor(Color(Constant.Colors.primary))
                        .frame(height: (2.0))
                        .cornerRadius(2)
                }
            }.fixedSize()
        }.onTapGesture {
            self.onSelect()
        }
    }
}

struct CapsuleTab: View {
    
    var onSelect:() -> Void
    var tab = Tab(title: "One", icon: "folder.fill", isSelect: true)
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            
            Text(tab.title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(self.tab.isSelect == true ? .white : .gray)
                .frame(width: 70, height: 25)
                .padding(.vertical,12)
                .background(self.tab.isSelect ? Color(Constant.Colors.primary) : Color.clear)
                .clipShape(Capsule())
                
                .onTapGesture {
                    self.onSelect()
            }.fixedSize()
        }
    }
}

struct CapsuleWithImageTab: View {
    
    var onSelect:() -> Void
    var tab = Tab(title: "One", icon: "folder.fill", isSelect: true)
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            
            Image(systemName: tab.icon)
                .resizable()
                .frame(width: 16, height: 16, alignment: .center)
                .foregroundColor(self.tab.isSelect == true ? .white : .gray)
            Text(tab.title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(self.tab.isSelect == true ? .white : .gray)
            
        }.frame(width: 100, height: 40)
         .background(self.tab.isSelect ? Color(Constant.Colors.primary) : Color.clear)
         .clipShape(Capsule())
         .onTapGesture {
            self.onSelect()
        }
    }
}
