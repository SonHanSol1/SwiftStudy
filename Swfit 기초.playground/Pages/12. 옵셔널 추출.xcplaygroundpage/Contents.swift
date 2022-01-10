import Swift
import Security
/*
func printName(name: String) {
    print(name)
}

var myName: String? = nil

//printName(myName)
// 전달되는 값의 타입이 다르기 때문에 컴파일 오류발생
*/
//MARK: - if-let

func printName(name: String) {
    print(name)
}

var myName: String! = nil

if let name: String! = myName {
    print(name)
} else {
    print("myName == nil")
}

// name 상수는 if-let 구문 내에서만 사용가능합니다.
// 상수 사용범위를 벗아났기 때문에 컴파일 오류 발샹
//printName(name)

var myName: String? = "HanSol"
var yourName: String? = nil
if let name = myName, let friend = yourName { // ,로 여러개 추출이 가능
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행되지 않습니다.
// nil일 때는 실행 X
yourName = "hana"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// HanSol and hana

// MARK: - 강제 추출
func printName(name: String) {
    print(name)
}

var myName: String? = "HanSol"
printName(myName!) // HanSol

myName = nil

print(myName!)
// 강제추출시 값이 없으므로 런타임 오류 발생

//var yourName: String! = nil

//printName(yourName)
// nil 값이 전달되기 때문에 런타임 오류발생
