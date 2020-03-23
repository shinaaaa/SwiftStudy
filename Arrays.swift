//1. 배열 선언
var arrays = ["A", "B", "C", "D"]
print(arrays)

//2. 배열 길이
var len = arrays.count
print(len)

//3. 배열 순회
for row in arrays {
    var index = arrays.index(of: row)
    print("\(index) 번째 \(row)")
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
