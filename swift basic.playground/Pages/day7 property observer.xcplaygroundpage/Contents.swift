//: [Previous](@previous)

import Foundation

var myAge = 0 {
    willSet {
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet {
        print("값이 설정되었다. myAge: \(myAge)")
    }
}

myAge = 20
myAge = 50

/*
 
 willSet = 선언되기 전 호출됨
didSet = 새 값이 저장된 직후 호출됨
print하지 않아도 변경 전과 이후의 값을 알 수 있음

*/
