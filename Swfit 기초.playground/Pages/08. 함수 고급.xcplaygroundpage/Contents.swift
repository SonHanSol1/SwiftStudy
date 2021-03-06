
//MARK: -매개변수 기본 값
// 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋습니다.
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값...) -> 반환타입{
    /* 함수 구현부 */
//    return 반환값
//}

func greeting(friend: String, me: String = "HanSol"){
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 호출시 생략할 수 있습니다.
greeting(friend: "hana") //Hello hana! I'm HanSol
greeting(friend: "john", me: "eric") //Hello john! I'm eric


//MARK: -전달인자 레이블(Argument Label)

// 전달인자 레이블은 함수를 호출할 때
// 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 입장에서 표현하고자 할 때 사용합니다
//func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입{
    /* 함수 구현부 */
//    return
//}

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
// 위에 greeting 함수와 이름이 중복되지만 to, from을 사용하므로 함수자체의 이름이 바뀐 것과 같은 효과를 보기 때문에 중복정의의 역할을 수행할 수 있음
func greeting(to friend: String, from me: String){
    print("Hello \(friend)! I'm \(me)")
    // 내부에서는 매개변수 이름을 사용함
}

greeting(to: "hana", from: "HanSol")
// 외부에서는 to라는 전달인자로 함수 호출을 한다.
// 내부와 외부의 전달인자의 의미가 상이하거나 사용자 입장에서 전달인자 역할을 표현하고 싶을 때 사용한다.

//MARK: -가변 매개변수
// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있습니다.
// 가변 매개변수는 함수당 하나만 가질 수 있습니다.

//func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입{
    /* 함수 구현부 */
//    return
//}

func sayHelloToFriends(me: String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)!"
}
// 전달인자의 수는 늘려도 괜찮지만 전달인자가 없거나 nil이면 오류발생
// 아무 것도 전달하고 싶지 않을 때는 생략하면 된다
print(sayHelloToFriends(me: "hansol", friends: "hana","eric","wing"))

print(sayHelloToFriends(me: "hansol"))

//MARK: -데이터 타입으로서의 함수

// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어입니다.
// 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
// 매개변수를 통해 전달할 수도 있습니다.

// 반환타입을 생략할 수 없습니다ㅇ
//(매개변수1타입, 매개변수2타입 ...)->반환타입

var someFunction: (String, String)->Void = greeting(to:from:)
someFunction("eric","hansol")

someFunction = greeting(friend:me:)
someFunction("eric", "hansol")

//타입이 다른 함수는 할당할 수 없습니다 - 컴파일 오류 발생
//someFunction = sayHelloToFriends(me:friends:)

func runAnother(function: (String, String)->Void){
    function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))

runAnother(function: someFunction)
