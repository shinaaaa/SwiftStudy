// 클래스/구조체 선언
class ClTest1 {
    var a = 10
    var b = 20
}
struct StTest1 {
    var a = 11
    var b = 22
}

// 인스턴스 생성
let InClTest1 = ClTest1()
print(InClTest1.a)
let InStTest1 = StTest1()
print(InStTest1.a)


// 프로퍼티
// 값을 저장 하는 것
// 저장 프로퍼티
// - 입력된 값을 저장하거나 저장된 값을 제공
// - 상수 및 변수를 사용해서 정의 가능
// - 클래스, 구조체에 사용 가능, 열거는 불가능
// 연산 프로퍼티
// - 특정 연산을 통해 값을 만들어 제공
// - 변수만 사용해서 정의 기능
// - 클래스, 구조체, 열거형 사용 가능

// 1. 초기화 구문
class Car {
    var color: String
    
    init() {
        self.color = ""
    }
}

// 2. 옵셔널이 타입 설정
class Car2 {
//    var color: String?
    var color: String!
}

// 3. 프로퍼티에 초기값 설정
class Car3 {
    var color: String = ""
}

// 지연 저장 Properties
// lazy -> lazy 키워드가 붙은 프로퍼티는 초기화되지 않고 대기
// 호출하는 순간 초기화 함
class Start {
    init() {
        print("시작");
    }
}
class LazyTest {
    lazy var start = Start()
    init() {
        print("Lazy")
    }
}
let lzy = LazyTest()
//lzy.start

// 클로저를 이용한 저장 프로퍼티 초기화
class ProTest1 {
    var pro: String! = {
        print("하이")
        return "안녕"
    }()
    
    var pro2: String! = {
        print("바이")
        return "잘가"
    }()
}
let p = ProTest1()

//
