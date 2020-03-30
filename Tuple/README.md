```swift
// 1. 튜플 선언
// 타입에 상관없이 저장이 가능
// 수정, 삭제, 추가 등 변경이 불가능
var value1 = ("A", 1, 2.2, true)
print(value1.0)

// 2. 어노테이션을 사용한 튜플 선언
var value2 : (Int, String, Bool, (Int, String)) = (1, "A", false, (3, "C"))
print(value2.0)
print(value2.3)

// 3. 튜플 바인딩
var value3 : (String, Int, Bool) = ("Hi", 10, true)
var (a, b, c) = value3
print(a)

// 4. 결과값으로 반환
func value4 () -> (String, Int, Bool) {
    return ("A", 1, false)
}
print(value4())

// 5. 바인드 개수
var (a1, b1, c1) = value4()
print(a1)
// 바인드 개수와 튜플의 개수가 일치하지않으면 에러
// 따라서 값을 원하는 않는 경우 해당 부분에 "_"로 처리
var (a2, _, c2) = value4()
print(a2,c2)
```

