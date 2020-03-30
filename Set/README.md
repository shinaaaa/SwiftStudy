```swift
// 1. 초기값을 사용한 정의
var A : Set = ["A", "B", "C"]
print("A = \(A)")

// 2. 초기값 없이 정의
// 초기값이 없으면 타입 어노테이션에서 타입 정의 해야함
var B : Set<String> = []
print("B = \(B)")

// 3. 다른 방법으로 정의
var C = Set<String>()
C.insert("A")
C.insert("B")
C.insert("C")
print("C = \(C)")

// 4. 집합 순회 탐색
for item in C {
    print(item)
}

// 5. 집합 동적 추가, 삭제
var D = Set<String>()
// 추가
D.insert("A")
print(D)
// 삭제
D.remove("A")
print(D)
// 모두 삭제
D.removeAll()

// 6. 존재여부
var E = Set<String>()
if E.isEmpty {print("비어있음")}
// item 개수
var count = E.count
print(count)
// 포함 여부
if E.contains("A") {print("있음")}
else {print("없음")}

// 7. 집합연산
var AA : Set = ["A","B","C","D"]
var BB : Set = ["A","C","E"]
// 공통부분
print("공통 부분 : ", AA.intersection(BB))
// 한쪽만 있는 경우
print("한쪽만 있는 경우 : ", AA.symmetricDifference(BB))
// 공통부분을 제외하는 경우
AA.subtract(BB)
print("공통부분을 제외하는 경우 : ", AA)
// 모든 아이템
print("모든 아이템 : ", AA.union(BB))

// 8. 집합 여부 판단
// 전체가 포함되어있는지, AA < BB
print("전체가 포함되어있는지 : ", AA.isSubset(of: BB))
// 전체를 포함하는지, BB < AA
print("전체를 포함하는지 : ", AA.isSuperset(of: BB))
// 상위 집합인지 판단, AA < BB
print("전체가 상위 집합인지 판단: ", AA.isStrictSubset(of: BB))
// 상위 집합안에 있는지 판단, BB < AA
print("전체가 상위 집합안에 있는지 판단: ", AA.isStrictSubset(of: BB))
```

