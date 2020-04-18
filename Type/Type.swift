// 타입 캐스팅
class Vehicle {
    var currentSpeed = 0.0
    
    func accelerate() {
        self.currentSpeed += 1
    }
}

class Car: Vehicle {
    var gear: Int {
        return Int(self.currentSpeed / 20) + 1
    }
    
    func wiper() {
    }
}
let trans: Vehicle = Car()

class SUV: Car {
    var fourWheel = false
}
let jeep: Vehicle = SUV()

// 상위 클래스 타입으로 선언시 인자 값으로 사용할 수 있는 객체의 범위가 넓어짐
func move(param: SUV) {
    param.accelerate()
}
var list = [Vehicle]()
list.append(Vehicle())
list.append(Car())

// 타입 비교 연산
// 인스턴스 is 비교대상 타입
// 인스턴스 보다 비교대상이 상위 클래스 이거나 일치할 경우 === true
// 인스턴스 보다 비교대상이 하위 클래스인 경우 === false
print(SUV() is Vehicle)
print(Car() is SUV)

// 타입 캐스팅 연산
// 업 캐스팅
// - 하위 클래스 타입을 상위 클래스 타입으로 변환
// - 캐스팅하기 전 타입이 하위 클래스. 캐스팅한 후 타입이 상위 클래스인 경우
// - 캐스팅한 결과, 캐스팅하기 전 타입보다 추상화될 때
// - 일반적으로 캐스팅 과정에서 오류가 발생할 가능성이 없음
// 객체 as 변환할 타입
let anyCar: Car = SUV()

// 다운 캐스팅
// - 상위 클래스 타입을 타위 클래스 타입으로 캐스팅
// - 캐스팅하기 전 타입이 상위 클래스, 캐스팅한 후 타입이 하위 클래스
// - 캐스팅한 결과, 캐스팅하기 전 타입보다 구체화될 때
// - 캐스팅 과정에서 오류가 발생할 가능성이 있음
// - 오류에 대한 처리 방에서 따라 옵셔널 캐스팅과 강제 캐스팅으로 나뉨
// 객체 as? 변환할 타입 ==> 옵셔널 결과값
// 객체 as! 변환할 타입 ==> 일반 결과겂
let anySUV = anyCar as? SUV
