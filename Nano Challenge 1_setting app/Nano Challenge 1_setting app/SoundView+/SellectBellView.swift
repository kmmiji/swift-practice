//
//  SellectBellView.swift
//  Nano Challenge 1_setting app
//
//  Created by 김미지 on 2023/06/05.
//

import SwiftUI

struct SellectBellView: View {
    enum Bell: String, CaseIterable, Identifiable {
        case 반향, 공상음, 공지음, 녹차, 놀이시간, 느린상승, 도입음, 물결, 반짝반짝
        var id: String { self.rawValue }
    }
    
    @State private var pickerBell: String = Bell.반향.rawValue
    
    var body: some View {
        List{
            Section {
                Text("진동")
            }
            Section("벨소리") {
                Picker(selection: $pickerBell, label: EmptyView()) {
                    ForEach(Bell.allCases) { Bell in
                        Text(Bell == .반향 ? "\(Bell.rawValue)(기본 설정)" : Bell.rawValue)
                    }
                }
                .pickerStyle(.inline)
            }
        }
    }
}


struct SellectBellView_Previews: PreviewProvider {
    static var previews: some View {
        SellectBellView()
    }
}
