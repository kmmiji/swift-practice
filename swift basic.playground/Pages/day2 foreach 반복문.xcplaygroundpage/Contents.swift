//: [Previous](@previous)

import Foundation

//콜렉션 collection = 데이터를 모아둔 것
// collection type= 배열 array, 셋 set , 딕셔너리 dictionarie , 튜플

//배열
var myArray: [Int] = [0,1,2,3,4,5] // []는 배열 , int(정수)라는 배열

for item in myArray {
    print(item)
}   // myArray가 가지고 있는 만큼 반복을 하겠다 + 그것을 item이라는 것으로 담겠다

for item in myArray where item > 3 {
    print("3보다 큰수: \(item)")
} //특정한 조건을 넣을 때는 where을 쓴다

for item in myArray where item % 2 == 0 {
    print("짝수: \(item)")
}

for item in myArray where item % 2 != 0 {
    print("홀수: \(item)")
}
