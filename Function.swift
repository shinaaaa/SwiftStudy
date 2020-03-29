// function
// 코드를 분리하여 구조화한 객체
// 입력값 -> 인자값, 파라미터
// 출력값 -> 반환값, 리턴값
// 일반 함수 -> 기본적으로 제공하는 함수
// 사용자 정의 함수 -> 원하는 기능을 위해 직접만든 함수

// 1. 사용자 정의 함수
// func name(parameters) -> return type {
//     function body
// }
// 함수 이름 -> _, 영어로 시작해야함

// 1.1 매개변수, 반환값이 없는 함수
func Afun() {
    print("A")
}
// 1.2 매개변수 없고, 반환값만 있는 함수
func Bfunc() -> String {
    return "B"
}
// 1.3 매개변수 있고, 반환값 없는 함수
func Cfunc(result: String) {
    print(result)
}
// 1.4 매개변수, 반환값 둘다 있는 함수
func Dfunc(result: String) -> String {
    return result
}

// 1.5 함수 호출
// 함수 호출 시 매개변수가 있는 경우
// 인자 레이블을 붙여서 호출해야함
func hello(name: String) {
    print("안녕 \(name)")
}
hello(name: "홍길동")

// 1.6 함수 반환
// _ 사용시 반환 값 생략 가능
func FuncReturn() -> (String, Int) {
    let fname = "홍길동"
    let fage = 99
    return (fname, fage)
}
var (A,B) = FuncReturn()
print("이름 : \(A), 나이 \(B)")

// 추론 방지
func FuncReturn2() -> (n: String, a: Int) {
    let fname = "홍길동"
    let fage = 99
    return (fname, fage)
}
var result = FuncReturn2()
print("이름 : \(result.n), 나이 \(result.a)")

// 데이터 타입 축약
// 타입 얼라이스로 타입명 선언
typealias FuncResult = (String, Int)
func FuncReturn3() -> FuncResult {
    let fname = "홍길동"
    let fage = 99
    return (fname, fage)
}
var result3 = FuncReturn3()
print("이름 : \(result3.0), 나이 \(result3.1)")
