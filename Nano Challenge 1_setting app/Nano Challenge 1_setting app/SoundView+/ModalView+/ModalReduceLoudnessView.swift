//
//  ModalReduceLoudnessView.swift
//  Nano Challenge 1_setting app
//
//  Created by 김미지 on 2023/06/02.
//

import SwiftUI

struct ModalReduceLoudnessView: View {
    var body: some View {
        ScrollView{
            VStack {
                Image("청력 관련 기사")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width * 1)
                //첫번째 단락
                Text("헤드폰 및 청각 건강")
                    .font(.title)
                    .bold()
                    .frame(width: 350, alignment: .leading)
                    .padding(.vertical, 5)
                Text("사용자의 청각을 해칠 수 있는 큰 소리로부터 자신을 보호하는 것은 중요합니다. 잠재적으로 해를 끼칠 수 있는 주변의 소음과는 달리, 헤드폰을 통해 나오는 소리는 완전히 제어할 수 있습니다.")
                    .frame(width: 350, alignment: .leading)
                    .font(.system(size: 16, weight: .regular))
                    .padding(.bottom)
                //두번째 단락
                Text("큰 소리로 간주되는 소리 이해하기")
                    .font(.title3)
                    .bold()
                    .frame(width: 350, alignment: .leading)
                    .padding(.vertical, 2)
                Text("소리가 클수록 이에 노출되는 시간이 적어야 합니다. 일주일에 40시간을 훨씬 넘는 시간 동안 80데시벨(dB)로 소리를 들으면 청각 손실의 위험이 커집니다. 10dB을 높여서 90dB로 소리를 들으면 일주일 동안 4시간만 노출되어도 손상이 시작될 수 있습니다. 100dB 이상으로 소리를 높이면 일주일에 단 몇 분만 들어도 청각에 해를 끼칠 수 있습니다.")
                    .frame(width: 350, alignment: .leading)
                    .font(.system(size: 16, weight: .regular))
                    .padding(.bottom)
                //세번째 단락
                Text("큰 소리의 헤드폰 오디오가 청각에 미치는 영향")
                    .font(.title3)
                    .bold()
                    .frame(width: 350, alignment: .leading)
                    .padding(.vertical, 2)
                Text("큰 소리에 노출되면 음파를 뇌가 처리할 수 있는 전기 신호로 바꿔주는 귓속의 미세한 털이 손상을 입을 수 있습니다. 그 결과 일시적인 청각 손실, 먹먹함 또는 귀울림을 초래할 수 있습니다. 청력은 귀가 회복할 시간을 주면 향상됩니다.")
                    .frame(width: 350, alignment: .leading)
                    .font(.system(size: 16, weight: .regular))
                    .padding(.bottom)
                Text("소리에 대한 노출이 매우 큰 소리에, 매우 오랫동안, 또는 반복적으로 있게 되면 귀가 회복할 기회를 갖지 못하여 보통 영구적인 손상을 입게 됩니다. 일반적으로 즉각적인 청각 손상은 폭발음같이 극도로 큰 소리로 인해 초래합니다. 대부분의 최근 헤드폰은 즉각적으로 영구적인 손상을 초래할 만큼 큰 소리를 낼 수 없습니다.")
                    .frame(width: 350, alignment: .leading)
                    .font(.system(size: 16, weight: .regular))
                    .padding(.bottom)
                //네번째 단락 - 소음레벨 그래프
                Group {
                    VStack{
                        Text("예제 소음 레벨")
                            .font(.title3)
                            .bold()
                            .frame(width: 350, alignment: .leading)
                            .padding(.vertical, 2)
                        Group {
                            //속삭임
                            HStack {
                                Text("속삭임")
                                    .font(.footnote)
                                    .bold()
                                    .frame(alignment: .leading)
                                Spacer()
                                Text ("30-39dB")
                                    .font(.footnote)
                                    .fontWeight(.light)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .foregroundColor(Color(hex: "F2F2F7"))
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 40)
                                    .foregroundColor(.blue)
                                    .padding(.trailing, 305)
                            }
                            Divider()
                                .padding(.vertical, 5)
                            //도서관
                                HStack {
                                    Text("도서관")
                                        .font(.footnote)
                                        .bold()
                                        .frame(alignment: .leading)
                                    Spacer()
                                    Text ("40-49dB")
                                        .font(.footnote)
                                        .fontWeight(.light)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 50)
                                        .foregroundColor(Color(hex: "F2F2F7"))
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 40)
                                        .foregroundColor(.blue)
                                        .padding(.trailing, 235)
                                }
                            Divider()
                                .padding(.vertical, 5)
                            //보통 빗줄기 소리
                                HStack {
                                    Text("보통 빗줄기 소리")
                                        .font(.footnote)
                                        .bold()
                                        .frame(alignment: .leading)
                                    Spacer()
                                    Text ("50-59dB")
                                        .font(.footnote)
                                        .fontWeight(.light)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 50)
                                        .foregroundColor(Color(hex: "F2F2F7"))
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 40)
                                        .foregroundColor(.blue)
                                        .padding(.trailing, 165)
                                }
                            Divider()
                                .padding(.vertical, 5)
                        }
                        Group {
                            //대화
                                HStack {
                                    Text("대화")
                                        .font(.footnote)
                                        .bold()
                                        .frame(alignment: .leading)
                                    Spacer()
                                    Text ("60-69dB")
                                        .font(.footnote)
                                        .fontWeight(.light)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 50)
                                        .foregroundColor(Color(hex: "F2F2F7"))
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 40)
                                        .foregroundColor(.blue)
                                        .padding(.trailing, 95)
                                }
                            Divider()
                                .padding(.vertical, 5)
                            //진공청소기
                            HStack {
                                Text("진공청소기")
                                    .font(.footnote)
                                    .bold()
                                    .frame(alignment: .leading)
                                Spacer()
                                Text ("70-79dB")
                                    .font(.footnote)
                                    .fontWeight(.light)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .foregroundColor(Color(hex: "F2F2F7"))
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 40)
                                    .foregroundColor(.blue)
                                    .padding(.trailing, 25)
                            }
                            Text("75db 노출 제한: 127시간/7일")
                                .font(.caption)
                                .frame(width: 350, alignment: .leading)
                                .foregroundColor(.gray)
                            Divider()
                                .padding(.vertical, 5)
                        }
                        Group {
                            //시끄러운 식당
                                HStack {
                                    Text("시끄러운 식당")
                                        .font(.footnote)
                                        .bold()
                                        .frame(alignment: .leading)
                                    Spacer()
                                    Text ("80-89dB")
                                        .font(.footnote)
                                        .fontWeight(.light)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 50)
                                        .foregroundColor(Color(hex: "F2F2F7"))
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 40)
                                        .foregroundColor(.blue)
                                        .padding(.leading, 50)
                                }
                            Text("80db 노출제한: 40시간/7일")
                                .font(.caption)
                                .frame(width: 350, alignment: .leading)
                                .foregroundColor(.gray)
                            Divider()
                                .padding(.vertical, 5)
                            //오토바이
                            HStack {
                                Text("오토바이")
                                    .font(.footnote)
                                    .bold()
                                    .frame(alignment: .leading)
                                Spacer()
                                Text ("90-99dB")
                                    .font(.footnote)
                                    .fontWeight(.light)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .foregroundColor(Color(hex: "F2F2F7"))
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 40)
                                    .foregroundColor(.blue)
                                    .padding(.leading, 120)
                            }
                            Text("90db 노출제한: 4tlrks/7dlf")
                                .font(.caption)
                                .frame(width: 350, alignment: .leading)
                                .foregroundColor(.gray)
                            Divider()
                                .padding(.vertical, 5)
                        }
                        Group {
                            //구급차 사이렌
                                HStack {
                                    Text("구급차 사이렌")
                                        .font(.footnote)
                                        .bold()
                                        .frame(alignment: .leading)
                                    Spacer()
                                    Text ("100-109dB")
                                        .font(.footnote)
                                        .fontWeight(.light)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 50)
                                        .foregroundColor(Color(hex: "F2F2F7"))
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 40)
                                        .foregroundColor(.blue)
                                        .padding(.leading, 190)
                                }
                            Text("100db 노출제한: 24분/7일")
                                .font(.caption)
                                .frame(width: 350, alignment: .leading)
                                .foregroundColor(.gray)
                            Divider()
                                .padding(.vertical, 5)
                            //록 콘서트
                            HStack {
                                Text("록 콘서트")
                                    .font(.footnote)
                                    .bold()
                                    .frame(alignment: .leading)
                                Spacer()
                                Text ("110-119dB")
                                    .font(.footnote)
                                    .fontWeight(.light)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .foregroundColor(Color(hex: "F2F2F7"))
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 40)
                                    .foregroundColor(.blue)
                                    .padding(.leading, 260)
                            }
                            Text("110db 노출제한: 4분/7일")
                                .font(.caption)
                                .frame(width: 350, alignment: .leading)
                                .foregroundColor(.gray)
                            Divider()
                                .padding(.vertical, 5)
                        }
                        Group {
                            //천둥소리
                                HStack {
                                    Text("천둥소리")
                                        .font(.footnote)
                                        .bold()
                                        .frame(alignment: .leading)
                                    Spacer()
                                    Text ("120-130dB")
                                        .font(.footnote)
                                        .fontWeight(.light)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 50)
                                        .foregroundColor(Color(hex: "F2F2F7"))
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 40)
                                        .foregroundColor(.blue)
                                        .padding(.leading, 310)
                                }
                            Text("120db 노출제한: 1분/7일")
                                .font(.caption)
                                .frame(width: 350, alignment: .leading)
                                .foregroundColor(.gray)
                            Divider()
                                .padding(.vertical, 5)
                        
                            Text("노출 제한의 출처는 세계보건기구입니다.")
                                .font(.caption)
                                .frame(width: 350, alignment: .leading)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .frame(width: 350, alignment: .topLeading)
                .padding(.bottom)
                //다섯번째 단락
                Group {
                    Text("실천방법")
                        .font(.title3)
                        .bold()
                        .frame(width: 350, alignment: .leading)
                        .padding(.vertical, 2)
                    Text("청력을 보호하는 가장 좋은 방법은 큰 소리에 노출되는 시간과 빈도를 제한하는 것입니다. '헤드폰 오디오 레벨'에서 사용자의 청취 습관을 확인할 수 있습니다. 또한, 설정에서 음량 제한을 설정하여 큰 소리에 노출되는 것을 줄일 수 있습니다.")
                        .frame(width: 350, alignment: .leading)
                        .font(.system(size: 16, weight: .regular))
                        .padding(.bottom, 1)
                    Text("설정 열기")
                        .frame(width: 350, alignment: .leading)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.blue)
                        .padding(.bottom, 10)
                    Text("안전한 청취를 위한 여러 한도를 초과했을 때 알림을 받을 수도 있습니다.")
                        .frame(width: 350, alignment: .leading)
                        .font(.system(size: 16, weight: .regular))
                        .padding(.bottom)
                }
                .frame(width: 350, alignment: .topLeading)
            }
        }
    }
}
    
struct ModalReduceLoudnessView_Previews: PreviewProvider {
    static var previews: some View {
        ModalReduceLoudnessView()
    }
}
