//
//  modalView.swift
//  Nano Challenge 1_setting app
//
//  Created by 김미지 on 2023/06/02.
//

import SwiftUI

struct ModalHeadphoneAlarmView: View {
    var body: some View {
        VStack {
            Text("헤드폰 알림에 관하여")
                .font(.title)
                .bold()
                .padding(.vertical, 30)
            Text("이 알림은 사용자가 청각에 영향을 줄 만큼 오랜 시간동안 큰 소리로 헤드폰 오디오를 들었다는 것을 알립니다. 일부 지역에서는 규제 및 안전 기준에 의해 이 알림이 반드시 필요합니다.")
                .frame(width: 350, alignment: .leading)
                .font(.system(size: 16, weight: .regular))
                .padding(.bottom)
            Text("7일 한도 알림")
                .frame(width: 350, alignment: .leading)
                .font(.system(size: 16, weight: .semibold))
            Group {
                Text("노출제한은 세계보건기구가 정한 청취 안전 지침을 기반으로 합니다. 오디오는 7일간에 걸쳐 측정되며, 음량크기와 청취시간이 모두 제한할 사항으로 고려됩니다. 오디오를 크게 들을 수록 청취 시간이 줄어들고 더 빨리 제한 한도에 이를 수 있습니다.")
                    .padding(.bottom)
                Text("사용자의 Bluetooth 기기를 분류하면 헤드폰 오디오를 정확하게 측정하는 데 도움이 됩니다.")
                    .padding(.bottom)
                Text("건강 앱에서 헤드폰 오디오 노출 기록을 확인하고 안전하게 청취하는 습관에 관하여 더 알아볼 수 있습니다.")
            }
            .frame(width: 350, alignment: .topLeading)
            .font(.system(size: 16, weight: .regular))
//            .background(.yellow)
            Spacer()
            
        }
    }
}

struct ModalHeadphoneAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        ModalHeadphoneAlarmView()
    }
}
