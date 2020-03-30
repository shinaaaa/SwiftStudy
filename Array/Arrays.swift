//1. 배열 선언
var arrays = ["A", "B", "C", "D"]
print(arrays)

//2. 배열 길이
var len = arrays.count
print(len)

//3. 배열 순회
for row in arrays {
    var index = arrays.index(of: row)
    print("\(index!) 번째 \(row)")
}

//4. 배열 동적 선언
// 선언 및 초기화
var arrays2 = Array<String>()

// 선언, 초기화 따로
var arrays3 : Array<String>
arrays3 = Array()

// 다른 선언 방법
// 선언 및 초기화
var arrays4 = [String]()

// 선언, 초기화 따로
var arrays5 : [String]
arrays5 = [String]()
// arrays5 = ()

//5. 배열 동적 추가
// append(_:) 배열 맨뒤에 추가
// insert(_:at:) 원하는 위치에 추가
// append(contentsOf:) 맨뒤에 여러개 추가
var arrays6 = [String]()
arrays6.append("A")
arrays6.append("C")
arrays6.insert("B", at: 1)
arrays6.append(contentsOf: ["D","E"])
print(arrays6)
