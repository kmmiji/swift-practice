//: [Previous](@previous)

import Foundation

//레인지
//0...5
// 0,,1,2,3,4,5 를 뜻함

//0..<5
//0,1,2,3,4 (5보다 작을때까지)
for index in 0...5 {
    print("0부터5까지: \(index)")
}

// 반복을 뜻하는 iterate 때문에 i로 쓰는게 일반적
for i in 0..<4 {
    print("4보다 작은:\(i)")
}

//조건을 걸고 싶으면
for ii in 0..<10 where ii % 2 == 0 {
    print("나머지값이 0인 것: \(ii)")
}


//빈배열은 [] 혹은 [Int]()
// var randomInts: [Int] = [Int]()
var randomInts: [Int] = [Int]()

for _ in 0..<30 { // i를 안쓰려면 _ 언더바로 쓰면 됨
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")


/*
 for문 으로는 몇 번 출력할 지 제어할 수 있지만
forEach 는 컨테이너의 각 요소를 클로저에 던져 이용하기 때문에 요소만큼만 가능합니다.

 //for문
 let numbers = [123]

 for _ in 0...2 {
     print(numbers[0])
 }
 // Prints 123
 // Prints 123
 // Prints 123
 
 //forEach 문
 let numbers = [123]

 numbers.forEach { number in
     print(number)
 }
 // Prints 123
 
 
*/
