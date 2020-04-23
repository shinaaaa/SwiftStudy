// 열거형
// 하나의 주제로 연관된 데이터들이 멤버로 구성되어 있는 자료형 객체
// enum 열거형 이름 {
// case 멤버값
// }
enum Dic {
    case north
    case south
    case east, west
}

let N = Dic.north
let S = Dic.south

var dicW: Dic = Dic.west
var dicE: Dic = .east

switch dicW {
    case Dic.west :
        print("서쪽")
    case Dic.east :
        print("동쪽")
    case Dic.north :
        print("북쪽")
    case Dic.south :
        print("남쪽")
}

// 값 분리
enum HTTPCode: Int {
    case OK = 200
    case NOT_MODIFY = 304
    case INCORRECT_PAGE = 404
    case SERVER_ERROR = 500
}
print(HTTPCode.OK.rawValue)

// 자동 할당
enum Rank: Int {
    case one = 1
    case two, three
}
print(Rank.one.rawValue)
print(Rank.three.rawValue)

// 연관 값
enum ImageFormat {
    case jpg
    case png(Bool)
    case gif(Int, Bool)
}
