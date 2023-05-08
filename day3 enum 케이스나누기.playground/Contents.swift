import UIKit

//enum = 타입을 나눈다 = 카테고리를 나눈다

// 학교 - 초, 중, 고
enum School {
    case elementary
    case middle
    case high
}

//다른 방식으로 표현할때는

enum School2 {
    case elementary2, middle2, high2
}

let yourSchool = School.high
print("yourSchool: \(yourSchool)")
print("yourSchool: ", yourSchool)


let yourSchool2 = School2.middle2
print("yourSchool: \(yourSchool2)")
print("yourSchool: ", yourSchool2)


// ------------------------------

enum Grade: Int {
    case first = 1
    case second = 2
}

let yourgrade = Grade.first
print(yourgrade)
print(yourgrade.rawValue) //Grade int값을 보고 싶으면 이렇게
print(yourgrade.self)


// 다른방식
enum Grade2: Int {
    case first2 = 1
    case second2 = 2
}

let yourgrade2 = Grade2.first2.rawValue // int 값을 보고 싶으면 여기에 적어도 가능
print(yourgrade2)





//
enum SchoolDetail {
    case elementry(name: String)
    case middle(name: String)
    case high(name: String)
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "둔산중")
print(yourMiddleSchoolName) // 꼬리표가 달려서 나옴


//꼬리표 안달리게 나오고 싶으면?
// func(함수)를 정의해주고 print할때 호출(블라블라.정의한 함수 이름)해줘야함
// -> 반환한다
enum SchoolDetail2 {
    case elementry2(name: String)
    case middle2(name: String)
    case high2(name: String)
    
    func getName() -> String {
        switch self {
        case.elementry2(let name):
            return name
        case let .middle2(name):
            return name
        case let .high2(name):
            return name
        }
    }
}

let yourMiddleSchoolName2 = SchoolDetail2.middle2(name: "둔산중")
print(yourMiddleSchoolName2)
print(yourMiddleSchoolName2.getName())
