### 메소드

- 특정 타입의 객체 내부에서 사용하는 함수



### 인스턴스 메소드

- 주어진 객체의 인스턴스와 함께 수행
- 객체 타입으로 호출 불가능
- 인스턴스 생성후 호출 가능

```swift
struct reSolution {
    var w = 0;
    var h = 0;
    func desc() -> String {
        let desc = "가로는 \(self.w) 세로는 \(self.h)"
        return desc
    }
}
// 호출
var res = reSolution()
res.w = 10
res.h = 20
print(res.desc())
```



### 타입 메소드

- 객체 타입 자체에 관련된 메소드

```swift
class Foo {
    class func fooType() {
        
    }
}
// 호출
Foo.fooType()
```



### init 초기화 메소드

- 초기화 메소드는 init으로 통일

- 매개변수의 형태는 자유

- 정의된 메소드는 직접호출이 가능하나 대부분 인스턴스 생성 시 간접 호출

```swift
struct ReSoultion2 {
  var w = 0
  var h = 0

  init(w:init) {
    self.w = w
  }

}

class videoMode {
  var resolution = ReSoultion2(w: 1080)
  var interlaced = false
  var frameRate = 0.0
  var name: String?

  init(interlaced: Bool, frameRate: Double) {
    self.interlaced = interlaced
    self.frameRate = frameRate

  }

}

// 구조체에 대한 인스턴스 생성
let resolution2 = ReSoultion2.init(w:2048)

// 클래스에 대한 인스턴스 생성
let videoMode = videoMode.init(interlaced:true, frameRate:40.0)
```



### 옵셔널 체인

- nil이 할당될 수 있는 값

- 초기값으로 선언되며 값 출력 과정에서 오류 발생시 대입되는 값

- 흔히 if구문을 통하여 옵셔널 검증을 함

- 옵셔널 체인으로 참조된 값음 옵셔널 타입으로 반환됨

- 옵셔널 타입이 다중으로 되어있어도 한번만 처리됨

- 옵셔널 체인 구문 : OptionalTest?.getValue()?.str

- 옵셔널 강제 해체 : OptionalTest!.getValue()!.str

```swift
struct Human {
  var name: String?
  var man: Bool = true
}

var boy: Human? Human(name: "홍길동", man:true)

if boy != nil {

  if boy!.name != nil {
    print("이름은 \(boy!.name!)입니다.")
  }
}

// 비강제 해제 구문
if let b = boy {
  
  if let name = b.name {
    print("이름은 \(name)입니다.")
  }
}
```

