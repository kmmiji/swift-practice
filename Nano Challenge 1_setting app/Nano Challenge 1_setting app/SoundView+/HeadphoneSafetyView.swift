//
//  HeadphoneSafetyView.swift
//  Nano Challenge 1_setting app
//
//  Created by 김미지 on 2023/06/02.
//

import Foundation
import SwiftUI


struct HeadphoneSafetyView: View {
    @State private var headphoneAlarm = false
    @State private var reduceLoudness = false
    
    var body: some View {
        VStack{
            Form {
                Section (footer: ModalHeadAlarm()) {
                    Toggle("헤드폰 알림", isOn: $headphoneAlarm)
                }
                Section (footer: ModalReduceLoudness()) {
                    
                    Toggle("큰 소리 줄이기", isOn: $reduceLoudness)
                }
            }
            
        }
        
    }
}

struct ModalHeadAlarm: View {
    @State var showModal: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            Text("iPhone이 청력을 보호하기 위해 헤드폰 오디오 레벨을 측정합니다. 권장되는 7일 한도를 초과하면 알림을 보내고 음량을 줄입니다.")
                .font(.caption2)
                .frame(width: 340, height: 35)
            HStack{
                Spacer(minLength: 240)
                Button {
                    showModal.toggle()
                } label: {
                    Text("더 알아보기...")
                        .font(.caption2)
                        .padding(.bottom, 4)
//                        .background(.yellow)
//                        .opacity(0.5)
                    
                } // "더알아보기"의 frame이 설명텍스트 위에 있어서 눌리는 공간이 넓어짐...수정해야함
                Spacer()
            }
            
            
        }
        .sheet(isPresented: $showModal) {
            ModalHeadphoneAlarmView()
        }
    }
}

struct ModalReduceLoudness : View {
    @State var showloudness: Bool = false
    var body: some View {
        ZStack {
            Text("사용자의 iPhone이 헤드폰 오디오를 분석하여 지정한 데시벨을 초과하는 큰 소리를 줄일 수 있습니다.")
                .font(.caption2)
                .frame(width: 340, height: 35)
            Button {
                showloudness.toggle()
            } label: {
                Text("더 알아보기...")
                    .font(.caption2)
                    .frame(height: 27, alignment: .bottomTrailing)
                    .padding(.trailing,  UIScreen.main.bounds.width * 0.1)
//                    .background(.blue)
            } // "더알아보기"의 frame이 설명텍스트 위에 있어서 눌리는 공간이 넓어짐...수정해야함
        }
        .sheet(isPresented: $showloudness) {
            ModalReduceLoudnessView()
        }
    }
}


struct HeadphoneSafetyView_Previews: PreviewProvider {
    static var previews: some View {
        HeadphoneSafetyView()
    }
}
