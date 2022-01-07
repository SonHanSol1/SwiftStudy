
//MARK: - 옵셔널이란?
//someOptionalParm에 nil이 할당 될 수 있다.
func someFunction(someOptionalParam: Int?){
    // .....
}

// someOptionalParm에 nil이 할당 될 수 없다.
func someFunction(someParam: Int){
    // .....
}


someFunction(someOptionalParam: nil)
// someFunction(someParam: nil) // 컴파일 오류
//someOptionalParam: Int?은 ?로 옵셔널을 표현했기 때문에 nil값을 넣어도 문제가 없지만 someParam는 옵셔널이 아니기에 컴파일 오류가 발생함

//MARK: - 옵셔널 문법과 선언

//enum(열거형) + general
enum Optional<Wrapped> : ExpressibleByNilLiteral {
    case none // 옵셔널 값이 없다 ExpressibleByNililteral
    case some(Wrapped) // 옵셔널 내부에 값이 있다
}

let optionalValue: Optional<Int> = nil // 옵셔널의 선언의 완전한 문법
//let optionalValue: Int? = nil // 옵셔널 선언은 ?로 만으로 옵셔널을 표현 가능함

//MARK: 옵셔널 표현
//Implicitly Unwrapped Optional (암시적 추출 옵셔널)
var implicityUnwrappedOptionalValue: Int! = 100
// 옵셔널은 열거형이여서 switch문으로 구분 가능
switch implicityUnwrappedOptionalValue {
case .none: // 값이 없을 때
    print("This Optional variable is nil")
case .some(let value):  // 값이 들어왔을 때
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicityUnwrappedOptionalValue = implicityUnwrappedOptionalValue + 1

// nil 할당 가능
implicityUnwrappedOptionalValue = nil

//잘못된 접근으로 인한 런타임 오류 발생
//위에서 옵셔널에서 nil 값을 썻는데 접근했기에 오류
//implicityUnwrappedOptionalValue = implicityUnwrappedOptionalValue + 1

// Optional
var optionalValue: Int? = 100

switch optionalValue{
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}
// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
// optionalValue = optionalValue + 1
