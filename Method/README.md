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

