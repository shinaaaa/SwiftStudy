### 프로토콜

- 구현해야 할 메소드의 명세가 작성
- 델리게이트 패턴에서 이벤트에 대한 위임 처리를 하기 위함
- 구현할 메소드의 형식을 공통으로 정의
- 구현한 객제의 메소드나 속성을 은닉하고 프로토콜에서 선언된 명세의 내용만 제공
- protocol 프로토콜명 { 구현할 메소드 명세 }
- struct/class/enum/extention 객체명: 구현할 프로토콜명 { }



#### 프로토콜 프로퍼티

```swift
protocol SomePropertyProtocol {
    var name: String { get set }
    var description: String { get }
}

struct RubyMember: SomePropertyProtocol {
    var name = "홍길동"
    var description: String {
        return "NAME : \(self.name)"
    }
}
var ruby = RubyMember()
print(ruby.description)
```



#### 프로토콜 메소드 

```swift
protocol SomeMethodProtocol {
    func execute(cmd: String)
    func showPory(p: Int) -> String
}

struct RubyService: SomeMethodProtocol {
    func execute(cmd: String) {
        if cmd == 'start' {
            print("실행합니다.")
        }
    }
    
    func showPort(p: Int) -> Stirng {
        return "Port : \(p)"
    }
}
```

