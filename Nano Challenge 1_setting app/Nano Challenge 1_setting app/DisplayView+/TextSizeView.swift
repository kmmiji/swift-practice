//
//  TextSizeView.swift
//  Nano Challenge 1_setting app
//
//  Created by 김미지 on 2023/06/07.
//

import SwiftUI

struct TextSizeView: View {
    @State private var fontSize: CGFloat = 18
    
    var body: some View {
        ZStack{
            Color(hex: "f2f2f7")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                    .frame(height: 50)
                Text("유동적 글자 크기 조절을 지원하는 앱은 아래와 같이 선호하는 글자 크기로 조절됩니다.")
                    .font(.system(size: fontSize))
                    .frame(width: 340)
                    .multilineTextAlignment(.center)
                Spacer()
                HStack{
                    Text("가")
                        .font(.system(size: 12))
                        .padding(.trailing,10)
                    Slider(value: $fontSize, in: 14...28, step: 2)
                    Text("가")
                        .font(.system(size: 20))
                        .padding(.leading,10)
                }
                    .frame(width: 350, height: 100)
                    .padding(.horizontal, 50)
                    .background(.white)
                    .overlay(
                    Rectangle()
                        .stroke(.gray, lineWidth: 0.3)
                    )
                Spacer()
                    .frame(height: 20)
            }
        }
    }
}

struct TextSizeView_Previews: PreviewProvider {
    static var previews: some View {
        TextSizeView()
    }
}
