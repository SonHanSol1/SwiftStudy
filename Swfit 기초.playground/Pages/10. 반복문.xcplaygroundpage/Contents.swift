/* 반복문 */

var integers = [1, 2, 3]
let people = ["hansol": 10, "eric": 15, "mike": 12]

//MARK: - for-in

//for item in items {
//      code
//}

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입니다.
for (name, age) in people{
    print("\(name): \(age)")
}

//MARK: - while

//while condition{
//      code
//}


// Bool 값만 올 수 있다 그렇기에 while 1 {}은 오류발생
while (integers.count > 1) {
    integers.removeLast()
}

//MARK: - repeat-while

// 다른 언어에서의 do-while과 같은 형식
// do를 안 쓰는 이유는 스위프트에서 do는 오류 처리에서 사용되기 때문이다
//repeat {
//      code
//} while condition

repeat {
    integers.removeLast()
} while integers.count > 0
