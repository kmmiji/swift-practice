//
//  ContentView.swift
//  Nano Challenge 1_setting app
//
//  Created by 김미지 on 2023/05/31.
//

import SwiftUI

let screenSize: CGRect = UIScreen.main.bounds //더 알아볼것, 사실 먼지 모룸

struct SettingView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    Spacer()
                    //프로필
                    
                    HStack {
                        Image("Jerry")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .scaledToFit()
                            .cornerRadius(100)
                            .padding(.leading, UIScreen.main.bounds.width * 0.03)
                        VStack(alignment: .leading) {
                            Text("Jerry")
                                .font(.title)
                            Text("Apple ID, iCloud, 미디어 및 구입 항목")
                                .font(.footnote)
                        }
                        .padding(.leading, UIScreen.main.bounds.width * 0.03)
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 7, height: 12)
                            .padding(.horizontal)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.09)  //let screenSize 머시깽 이용한거임
                    .background(.blue)
                    .background(in: RoundedRectangle(cornerRadius: 15))
                    //리스트
                    List {
                        NavigationLink("사운드 및 햅틱") {
                            SoundView()
                                .navigationTitle("사운드 및 햅틱")
                                .navigationBarTitleDisplayMode(.inline)
                        }
                        NavigationLink("디스플레이 및 밝기") {
                            DisplayView()
                                .navigationTitle("디스플레이 및 밝기")
                                .navigationBarTitleDisplayMode(.inline)
                        }
                    }
                }
                .background(Color(hex: "F2F2F7"))
                .frame(height: UIScreen.main.bounds.height)
                
                /*
                 리스트가 배경컬러를 달고 다녀서 전체화면의 배경을 밝은그레이로 바꾸기 or 배경 안 넣을거면 리스트 배경컬러 없애기
                 */
            }
            .navigationTitle("설정")
            .background(Color(hex: "F2F2F7"))
            .scrollIndicators(.hidden)
        }
        .background(Color(hex: "F2F2F7"))
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
