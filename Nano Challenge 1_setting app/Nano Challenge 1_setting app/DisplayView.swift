//
//  DisplayView.swift
//  Nano Challenge 1_setting app
//
//  Created by 김미지 on 2023/05/31.
//

import SwiftUI

struct DisplayView: View {
    @State private var displayModeAutoToggle = false
    @State private var boldTextToggle = false
    @State private var trueToneToggle = true
    @State private var raseToWakeToggle = false
    
    @State private var brightSlider: CGFloat = 80 //화면밝기 slider
    
    var body: some View {
        List {
            Section {
                Text("라이트모드/다크모드 선택하는 거 만들기")
                Toggle("자동", isOn: $displayModeAutoToggle)
            } header: {
                Text("화면 스타일")
            }
            Section {
                NavigationLink("텍스트 크기") {
                    TextSizeView()
                        .navigationTitle("텍스트 크기")
                }
                Toggle("볼드체 텍스트", isOn: $boldTextToggle)
            }
            Section {
                HStack {
                    Image(systemName: "sun.min.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                    Slider(value: $brightSlider, in: 1...100, step: 5)
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28)
                        .foregroundColor(.gray)
                        .padding(.leading, 10)
                }
                Toggle("True Tone", isOn: $trueToneToggle)
            } footer: {
                Text("iPhone 디스플레이를 주변광에 맞춰 색상이 다른 환경에서도 일관적으로 보이도록 자동으로 조정합니다.")
            }
            Section {
                Text("Night Shift")
            } // navigationLink 안썼음
            Section {
                Text("자동 잠금")
                Toggle("들어서 개우기", isOn: $raseToWakeToggle)
            }
            Section {
                Text("디스플레이 확대/축소")
            } header: {
                Text("디스플레이")
            } footer: {
                Text("iPhone을 보는 방식을 선택합니다. '더 큰 텍스트'는 제어기를 크게 표시합니다. '기본'은 콘텐츠를 더 많이 표시합니다.")
            }
        }
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView()
    }
}
