```swift
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
```

프로퍼티
값을 저장 하는 것
저장 프로퍼티
- 입력된 값을 저장하거나 저장된 값을 제공
- 상수 및 변수를 사용해서 정의 가능
- 클래스, 구조체에 사용 가능, 열거는 불가능

연산 프로퍼티
- 특정 연산을 통해 값을 만들어 제공
- 변수만 사용해서 정의 기능
- 클래스, 구조체, 열거형 사용 가능

```swift
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
```

```swift
// 프로퍼티 옵저버
// 프로퍼티의 값을 직접 변경하거나 자동을 변경되는 경우 호출됨
// willset : 프로퍼티의 값이 변경되지 직전에 호출
// didset : 프로퍼티의 값이 변경된 직후에 호출
struct Job {
    var income: Int = 0 {
        willset(newIncome) {
            print("이번달은 \(newIncome)")
        }
        didset {
            if income > oldValue {
                print("월급 증가")
            } else {
                print("월급 삭감")
            }
        }
    }
}

var job = Job(income: 10000)

job.income = 20000


// 타입 프로퍼티
// 인스턴스를 생성하지 않고 클래스나 구조체 자체에 값을 저장하는 것
// 저장된 값을 모든 인스턴스가 공통으로 사용 가능
// 초기값 할당 필수
// 클래스 내
static let hi = "hi"

class let bye: String {
    get {
        return "bye"
    }
    set {
        
    }
}
```swift
