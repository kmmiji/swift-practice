//
//  SoundView.swift
//  Nano Challenge 1_setting app
//
//  Created by 김미지 on 2023/05/31.
//

import SwiftUI

struct SoundView: View {
    @State private var bellButton = false
    @State private var sliderAudio = 0.0
    @State private var kyboardLockSound = false
    @State private var bellModeHaptic = true
    @State private var unbellModeHaptic = true
    @State private var systemHaptic = true
    
    var body: some View {
        ScrollView {
            VStack {
                List {
                    //헤드폰 오디오
                    Section("헤드폰 오디오") {
                        NavigationLink("헤드폰 안전성") {
                            HeadphoneSafetyView()
                                .navigationTitle("헤드폰 안전성")
                        }
                        Text("개인 맞춤형 공간 음향")
                    }
                    Section {
                        HStack{
                            Image(systemName: "speaker.fill")
                            Slider(value: $sliderAudio, in:-100...100, step: 1)
                            Image(systemName: "speaker.wave.3.fill")
                        }
                        Toggle("버튼을 사용하여 변경", isOn: $bellButton)
                    } header: {
                        Text("벨소리 및 알림 음량")
                    } footer: {
                        Text("음량 버튼으로 벨소리 및 알림 음량을 조절할 수 없습니다.")
                        }
                    Group {
                        Section("사운드 및 햅틱 패턴") {
                            NavigationLink("벨소리") {
                                SellectBellView()
                                    .navigationTitle("벨소리")
                            }
                            Text("메시지 수신음")
                            Text("음성 메시지 수신")
                            Text("메일 수신")
                            Text("메일 발신")
                            Text("캘린더 알림")
                            Text("미리 알림")
                        }
                        Section {
                            Text("키보드 피드백")
                            Toggle("잠금 사운드", isOn: $kyboardLockSound)
                        }

                        Section("벨소리 / 무음 모드 전환") {
                            Toggle("벨소리 모드에서 햅틱 재생", isOn: $bellModeHaptic)
                            Toggle("무음 모드에서 햅틱 재생", isOn: $unbellModeHaptic)
                        }
                    }
                }
                .frame(height: UIScreen.main.bounds.height * 1)
                //소리모드 이미지
                Group {
                    HStack {
                        Image(systemName: "bell.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, alignment: .leading)
                            .padding(.trailing, 15)
                        VStack (alignment: .leading){
                            Text("벨소리 모드")
                                .padding(.bottom, 1)
                            Text("벨소리 모드에서는 벨소리 및 알림이 들립니다.")
                        }
                        .foregroundColor(.gray)
                    }
                    .padding(.bottom, 20)
                    HStack(alignment: .top) {
                        Image(systemName: "bell.slash.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, alignment: .leading)
                            .padding(.trailing, 15)
                        VStack (alignment: .leading){
                            Text("무음 모드")
                                .padding(.bottom, 1)
                            Text("무음 모드에서는 벨소리 및 알림이 들리지 않습니다. 음악이나 비디오를 재생하는 것과 같은 경우에는 iphone이 사운드를 계속 재생할 수 있습니다.")
                        }
                        .foregroundColor(.gray)
                    }
                }
                .frame(width: 350, alignment: .topLeading)
                .font(.footnote)
                List {
                    Section {
                        Toggle("시스템 햅틱", isOn: $systemHaptic)
                    } footer: {
                        Text("시스템 제어 및 상호 작용에 대한 햅틱을 재생합니다.")
                    }
                }
                .padding(.top, 10)
            }
            .frame(height: UIScreen.main.bounds.height * 1.35)
        }
        .background(Color(hex: "F2F2F7"))
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView()
    }
}
