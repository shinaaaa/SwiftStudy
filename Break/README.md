```swift
//1. break 레이블 명시
// continue도 가능
Out : for i in 1..<10 {
    In : for j in 1..<10 {
        if(j==5) {
            break Out
        }
        print("\(i) * \(j) = \(i*j)")
    }
}
```

