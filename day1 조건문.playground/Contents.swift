import UIKit

//다크모드 여부
var isDarkMode : Bool = false

if (isDarkMode == true){
    print("다크모드입니다") // true 일때
} else {
    print("다크모드가 아닙니다") // false 일때
}


// !=
var isDarkMode2 : Bool = false

if (isDarkMode2 != true){ // != true 는 false
    print("다크모드입니다") // false 일때
} else {
    print("다크모드가 아닙니다") // true 일때
}



// * 다른식으로 표현할때
var isDarkMode3 : Bool = true

// isDarkMode3 == true 이다
if isDarkMode3 {
    print("다크모드입니다") // 이걸로 표시됨
} else {
    print("다크모드가 아닙니다")
}


// * 다른식으로 표현할때 2
var isDarkMode4 : Bool = false

// isDarkMode4 == false  ( 혹은 true가 아니라면~)이다
if !isDarkMode4 {
    print("다크모드가 아닙니다") // 이걸로 표시됨
} else {
    print("다크모드입니다")
}



// 다른식으로 표현할때 3
var title : String = isDarkMode4 == true ? "다크모드 입니다" : "다크모드가 아닙니다"
print("title: \(title)")

//
// 다른식으로 표현할때 3
var title2 : String = isDarkMode4 ? "다크모드 입니다" : "다크모드가 아닙니다"
print(title2)
