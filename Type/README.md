### 타입 캐스팅

```swift
class Vehicle {

  var currentSpeed = 0.0

  func accelerate() {

​    self.currentSpeed += 1

  }

}



class Car: Vehicle {

  var gear: Int {

​    return Int(self.currentSpeed / 20) + 1

  }

   

  func wiper() {

  }

}

let trans: Vehicle = Car()



class SUV: car {

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
```



### 타입 비교 연산

- 인스턴스 is 비교대상 타입
- 인스턴스 보다 비교대상이 상위 클래스 이거나 일치할 경우 === true
- 인스턴스 보다 비교대상이 하위 클래스인 경우 === false

```swift
print(SUV() is Vehicle)
print(Car() is SUV)
```



### 타입 캐스팅 연산

#### 업 캐스팅

- 하위 클래스 타입을 상위 클래스 타입으로 변환

- 캐스팅하기 전 타입이 하위 클래스. 캐스팅한 후 타입이 상위 클래스인 경우

- 캐스팅한 결과, 캐스팅하기 전 타입보다 추상화될 때

- 일반적으로 캐스팅 과정에서 오류가 발생할 가능성이 없음
- 객체 as 변환할 타입

```swift
let anyCar: Car = SUV()
```



#### 다운 캐스팅

- 상위 클래스 타입을 타위 클래스 타입으로 캐스팅

- 캐스팅하기 전 타입이 상위 클래스, 캐스팅한 후 타입이 하위 클래스

- 캐스팅한 결과, 캐스팅하기 전 타입보다 구체화될 때

- 캐스팅 과정에서 오류가 발생할 가능성이 있음

- 오류에 대한 처리 방에서 따라 옵셔널 캐스팅과 강제 캐스팅으로 나뉨
- 객체 as? 변환할 타입 ==> 옵셔널 결과값
- 객체 as! 변환할 타입 ==> 일반 결과겂

```swift
let anySUV = anyCar as? SUV
```



### Any, AnyObject

- Any - 클래스에 국한되지않고 모든 타입을 허용
- AnyObject - 모든 클래스 타입을 저장할 수 있는 범용 타입

```swift
var allCar: AnyObject = Car()

allCar = SUV()

func move(_ param: AnyObject) -> AnyObject {

  return param

}

move(Car())

move(Vehicle())



var list2 = [AnyObject]()

list.append(Car())

list.append(SUV())



// 타입 캐스팅을 통한 구체적 타입으로 변환 가능

let obj: AnyObject = SUV()

if let suv = obj as? SUV {

  print("캐스팅 성공")

}
```



#### 초기화 구문

- 구조체나 클래스 사용 시 인스턴스를 생성하여 메모리 공간 할당 후 사용

- init(매개 변수 : 타입, 매개변수 : 타입, ...) { }

#### 특징

- 초기화 메소드의 이름은 init

- 매개 변수의 개수, 이름, 타입은 임의 지정 가능

- 매개 변수의 이름과 개수, 타입이 서로 다른 여러개의 초기화 메소드 정의 가능

- 정의된 초기화 메소드는 직접호출되면서, 대부분 인스턴스 생성 시 간접 호출