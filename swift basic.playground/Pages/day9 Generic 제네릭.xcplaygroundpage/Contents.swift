//: [Previous](@previous)

import Foundation

// 어떤 자료형이든지 받을 수 있다
//제네릭 <>
//<SomeElement>에 보통은 <T>라고 씀 _ Type Parameter
struct myArray<SomeElement> {
    //제네릭을 담은 빈 배열
    var elements : [SomeElement] = [SomeElement]()
    
    init(_ elements: [SomeElement]) {
        self.elements = elements
    }
    
}

struct Friend {
    var name: String
}

struct PpakCoder{
    var name: String
}

var mySomeArray = myArray([2,3,4])
print("mySomeArray : \(mySomeArray)")

var myStringArray = myArray(["가","나","다"])
print("myStringArray : \(myStringArray)")

let friend_01 = Friend(name: "밎")
let friend_02 = Friend(name: "제리")
let friend_03 = Friend(name: "딩굴")

var myFriendsArray = myArray([friend_01, friend_02, friend_03])
print("myFriendsArray : \(myFriendsArray)")


/*
 제네릭이란 타입에 의존하지 않는 범용 코드를 작성할 때 사용한다
 제네릭을 사용하면 중복을 피하고, 코드를 유연하게 작성할 수 있다

 https://babbab2.tistory.com/136
 */
