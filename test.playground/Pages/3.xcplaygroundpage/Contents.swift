import Swift


/*
//character
var someCharacter: Character = "💡"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" //컴파일 오류발생
print(someCharacter)

//String
var someString: String = "하하하😄"
someString = someString + "웃으면 복이와요"
print(someString)

// someString = someCharacter //컴파일 오류발생

let integer = 100
let floatingPoint = 12.34
let apple = "A"
print(type(of:integer))
print(type(of:floatingPoint))
print(type(of:apple))
*/

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

// let someDouble: Double = someAny //컴파일 오류발생


//MARK: - AnyObject
class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
//someAnyObject = 123.12


//MARK: - nil
//someAny = nil //컴파일 오류
//someAnyObject = nil //컴파일 오류
