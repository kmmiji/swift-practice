//: [Previous](@previous)

import Foundation

//함수,메소드 정의
//name은 매개변수의 이름
//-> 는 String으로 변홚나다
func myFunction(name: String) -> String {
    return "안녕하세요 \(name)입니다"
}
//함수, 메소드를 호출한다. call
myFunction(name: "밎")


//---------
//with 이라는 전달인자 레이블

func second(with name: String) -> String{
    return "안녕 내이름은 \(name)이야"
}
second(with: "스펀지밥")



//--------
//와일드 카드 식별자 (_)를 사용해 전자인자 레이블을 사용하지 않아도 된다
func third(_ name: String) -> String{
    return "안녕 내이름은 \(name)야"
}
third("뚱이")

//https://velog.io/@dlwogus0128/swift-9.-%ED%95%A8%EC%88%98-%EB%A7%A4%EA%B0%9C%EB%B3%80%EC%88%98-%EC%9D%B4%EB%A6%84
