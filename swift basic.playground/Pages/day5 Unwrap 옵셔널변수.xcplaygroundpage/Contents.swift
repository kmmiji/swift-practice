//: [Previous](@previous)

import Foundation

//옵셔널이란? 값이 있을수도 없을수도 있다
// 값이 잇는지 없는지 모른다.

var someVariable : Int? = nil // ?가 있어야 값이 뭔지 모른다는 뜻
    
if someVariable == nil {
    someVariable = 90
}
print("someVariable", someVariable) // Optional(90)

/*
 언랩핑이란? 랩 즉 감싸져있는 것을 벗기는 것
옵셔녈이라고 감싸져있는 것을 벗겨야함
*/

// if let 이프렛

if let otherVariable = someVariable {
    print("언랩핑 되었다. 즉 값이 있다. otherVariable : \(otherVariable)") // 언랩핑되어 이걸로 나옴
} else {
    print("값이 없다.")
}// someV에 값이 있다면 otherV에 넣어서 쓰겠다 = otherV는 옵셔널이 아니게되고 값이 있는 알맹이만 쏙 가져와서 쓰게됨

//------------------------

someVariable = nil
//someV이 비어있으면, 즉 값이 없으면 기본값으로 이놈을 넣겠다.
let myValue = someVariable ?? 10 // 값이 없으면 10 넣을게~
print("myValue: \(myValue)")


//------------------------
// guard let 가드렛_언랩핑

var firstValue: Int? = 30
var secondValue : Int? = 50

print("firse: \(firstValue)")
print("second: \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)

func unwrap(_ parameter: Int?){
    print("unwrap() called") // 값이 없으면 리턴 해버린다.
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}


/*
       [요약 설명]
       1. 옵셔널(Optional) 은 데이터가 있을 수도 있고, 없을 수도 있다는 의미입니다
       2. swift 에서 옵셔널 데이터는 초기 변수 선언 후 (초기값 지정 없이) 값을 재할당 후 출력할 때 붙습니다
       3. if let : Optional 값이 nil인지 확인하고 분기 처리 작업을 수행합니다
       4. if let 구문에서 데이터가 Optional 인 경우는 if 문에서 벗김 처리 , nil 인 경우 else 구문에서 예외 처리를 수행합니다
       5. guard let : 조건이 true 인 여부를 검사합니다
       6. guard let 구문에서 조건이 true 인 경우 guard let 구문을 수행하고 , false 인 경우 else 구문에서 예외 처리를 수행합니다
       7. guard let 은 else 즉, 조건이 false 일 때 블럭을 종료하는 함수가 필요합니다 (break, return ... )
 */
// [출처] https://blog.naver.com/kkh0977/222849464127
//https://dvlpr-chan.tistory.com/12
//https://dvlpr-chan.tistory.com/13

