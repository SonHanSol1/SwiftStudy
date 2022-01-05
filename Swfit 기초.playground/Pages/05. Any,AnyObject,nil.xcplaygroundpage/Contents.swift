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
