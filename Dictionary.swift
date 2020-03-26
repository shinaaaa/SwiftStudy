// 일대일 대응으로 하나의 키는 하나의 데이터만 연결
// 같은 딕셔너리에서 키는 중복될 수 없음
// 중복 선언시 기존에 연결된 데이터가 제거되고 새로 연결됨
// 데이터 타입은 제한이 없음, 동일한 딕셔너리는 동일한 데이터 타입
// 딕셔너리 아이템 순서는 없으나 순회 탐색은 가능
// 키 타입에 제한은 없으나 해시 연산이 가능한 타입이여야함

// 1. 고유 키와 그에 대응하는 값을 연결하는 데이터 저장 자료형
var Dic1 = ["A":"1", "B":"2", "C":"3"]
var result : String = Dic1["B"]!
print(result)

// 2. 빈 딕셔너리 선언 및 초기화
// Dictionary<키 타입, 데이터 타입>()
var Dic2 = Dictionary<String, String>()
// 초기화
Dic2 = Dictionary()

// 3. 빈 딕셔너리 선언 및 초기화 버전 2
// [키 타입 : 데이터 타입}()
//var Dic3 : [String : Int]()
// 초기화
//Dic3 = [String : Int]()
// 어노테이션으로 타입이 명시적으로 선언된 경우 생략가능
//Dic3 = [:]

// 4. 추가
// 직접 추가
var Dic4 = [String : Int]()
Dic4["A"] = 1
// 동적 추가
// 딕셔너리 객체.updateValue("저장 값", forKey: "참조될 키 값")
Dic4.updateValue(2, forKey: "B")
var result2 : Int = Dic4["B"]!
print(result2)
Dic4.updateValue(5, forKey: "B")
result2 = Dic4["B"]!
print(result2)

// 5. 삭제
Dic4["A"] = nil
Dic4.removeValue(forKey: "B")
