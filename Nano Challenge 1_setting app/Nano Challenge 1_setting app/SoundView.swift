//
//  SoundView.swift
//  Nano Challenge 1_setting app
//
//  Created by 김미지 on 2023/05/31.
//

import SwiftUI

struct SoundView: View {
    var body: some View {
        List {
            Section("헤드폰 오디오") {
                NavigationLink("헤드폰 안전성") {
                    HeadphoneSafetyView()
                        .navigationTitle("헤드폰 안전성")
                }
                Text("개인 맞춤형 공간 음향")
                
            }
            //여기에 벨소리 및 알림음향(조절바 들어가야함)
            Section("사운드 및 햅틱 패턴") {
                Text("벨소리")
                Text("메시지 수신음")
                Text("음성 메시지 수신")
                Text("메일 수신")
            }
        }
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView()
    }
}
