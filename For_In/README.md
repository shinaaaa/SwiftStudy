```swift
//1. for in 구문
for row in 1...5 {
    print(row)
}


//2. 루프 상수 생략
for _ in 1...5 {
    print("안녕")
}


//3. 이중 for in 구문 중첩
for i in 1..<10 {
    for j in 1..<10 {
        print("\(i) * \(j) = \(i*j)")
    }
}
```

