//: [Previous](@previous)

import Foundation

//struct = 구조체 //변수들의 모음, 데이터 덩어리
//유투버 (데이터) 모델을 예시로 하자
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

var devJeoung = YoutuberStruct(name: "정대리", subscribersCount: 999)

var devJeoungClone = devJeoung
print("값 넣기 전 CloneName: \(devJeoungClone.name)")

//여기서 클론이름을 변경해보자 ( = 값을 복사한다고 생각하자)
devJeoungClone.name = "밎밎"
print("값 넣은 후 CloneName: \(devJeoungClone.name)")

print("값 넣은 후 devJeoungName: \(devJeoung.name)")


//---------------
//class - struct와 같음,변수들의 모음, 데이터 덩어리

class youtuberClass {
    var name : String
    var subscribersCount : Int
    //생성자를 만들어줘야함 init
    //init으로 매개변수를 가진 생성자 메소드를 만들어야
    //매개변수를 넣어서 그 값을 가진 객체(object)를 만들 수 있다.
    init(name: String, subscribersCount: Int) {
        self.name = name
        self.subscribersCount = subscribersCount
        // 내가 가지고 있는 이름을 외부에서 넣은 값으로 넣을게요
    }
}

var mijmij = youtuberClass(name: "스펀지밥", subscribersCount: 222)

var mijmijClone = mijmij
print("값 넣기 전 CloneName: \(mijmijClone.name)")

mijmijClone.name = "딩굴딩굴"
print("값 넣은 후 CloneName: \(mijmijClone.name)")

mijmij.name = "딩굴딩굴"
print("값 넣은 후 CloneName: \(mijmij.name)")

/*
 struct는 1을 2라는 다른 종이에 복사한거 ( 다른곳에 만드는 것이라 생각)
 
 class는 서로 연결이 되어있음_ 3이라는 것을 본따서 연결되어있는 것이 4이다
 내가 수정한것과 다른 사람이 보는 것이 같다 = 서로 다른 것이 같은 메모리/화면을 바라보고 있다
 
 */

/*
 
[ 구조체는 안 되는데 클래스는 가능한 것들 ]

상속 (Inheritance) : 클래스의 여러 속성을 다른 클래스에 물려 줌
타입 캐스팅 (Type casting) : 런타임에 클래스 인스턴스의 타입을 확인
소멸자 (Deinitializers) : 할당된 자원을 해제(free up) 시킴
참조 카운트 (Reference counting) : 클래스 인스턴스에 하나 이상의 참조가 가능
 
*/
