### Optional

- nil 사용이 가능한 타입과 가능하지않는 타입을 구분
- 가능한 타입을 옵셔널 타입이라고 함
- nil -> 값이 없음을 의미
- 옵셔널 타입은 연산이 불가능
- let A = Int("123")
- print(A) => Optional(123)



```swift
// 1. 옵셔널 타입
// Int
// var OptInt : Int?
// String
// var OptString : String?
// Double
// var OptDouble : Double?
// Array
// var OptArray : [String]?
// Dictionary
// var OptDictionary : Dictionary<String, Int>?
// var OptDictionary2 : [String, Int]?
// Class
// var OptClass : AnyObject?

// 2. 옵셔널 해체
// 2.1 명시적 해체
// 강제 해체
// 옵셔널 타입 값 뒤에 ! 기호를 붙여줌
// ! -> 강제 해체 연산자 (Force Unwrapping Operator)
var OInt : Int? = 10
print("해체 전 : \(OInt)")
print("해체 후 : \(OInt!)")
// 안전한 해체
var B = "100"
var IntB = Int(B)
if IntB != nil {print("해체 가능 : \(IntB!)")}
else {print("해체 불가능")}

// 옵셔널 바인딩
// 조건문 내에서 일반 상수에 옵셔널 값을 대입
var C = "200"
if let IntC = Int(C) {print("옵셔널 해체 가능 : \(IntC)")}
else {print("옵셔널 해체 불가능")}
// guard 사용
func D (value: String) {
    guard let IntD = Int(value) else {
        print("옵셔널 해체 불가능")
        return
    }
    print("옵셔널 해체 가능 : \(IntD)")
}
D(value : "300")
D(value : "안녕")

// 딕셔너리 옵셔널
// 딕셔너리의 키 값의 존재 유무때문에 옵셔널 값으로 반환됨
var Dic = ["A" : "11", "B" : "22", "C" : "33"]
print(Dic["A"])
print(Dic["B"]!)

if Dic["C"] != nil {print(Dic["C"]!)}
if let OpDic = Dic["C"] {print(OpDic)}

// 2.2 묵시적 해체
// 옵셔널 타입의 변수 선언시 ? -> ! 사용
// nil 값이 들어올 수 없는 경우 사용
var IntE : Int! = 99
print(IntE + 10)
```

