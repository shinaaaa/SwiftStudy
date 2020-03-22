//1. if 구문
var A = 10
var B = 20

if B < A {
    print("A가 더 크다")
}


//2. if else 구문
var A = 10
var B = 20

if B < A {
    print("A가 더 크다")
} else {
    print("B가 더 크다")
}


//3. guard 구문
//거짓 조건 실행코드만 존재
// return, break 필수
func divide(base: print) {
    
    guard base != 0 else {
        print("연산 불가능")
        return
    }
    let result = 100 / base
    print(result)
}

//#available 구문
if #available(iOS 13) {
    // 13 버전용
} else {
    // 이외 버전용
}
