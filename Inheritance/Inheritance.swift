// 상속
// 다른 클래스에 정의된 프로퍼티나 메소드를 사용하는 것
// 부모 클래스 === 상위 클래스 === 슈퍼 클래스 === 기본 클래스
// 자식 클래스 === 하위 클래스 === 서브 플래스 === 파생 클래스

class SuperClass {
    let name = "SuperClass"
    
    var description: String {
        return "I'm \(self.name)"
    }
    
    func foo() {
        print("\(self.name)'s foo()")
    }
}
let superClass = SuperClass()
print(superClass.name)
print(superClass.description)
superClass.foo()

class SubClass: SuperClass {
    let prop = "SubClass"
    
    func boo() -> String {
        return "I'm \(self.prop)"
    }
}
let subClass = SubClass()
print(subClass.prop)
print(subClass.boo())
subClass.foo()

// 오버 라이딩
// 자식 클래스에서 재정의된 메소드나 프로퍼티를
// 부모 클래스로 부터 물려 받은 내용에 덮어씀
class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "\(self.currentSpeed) 속도로 이동중"
    }
    
    func makeNosie() {
    }
}

class Car: Vehicle {
    var gear = 0
    var engineLevel = 0
    
    override var currentSpeed: Double {
        get {
            return Double(self.engineLevel * 50)
        }
        set {
            
        }
    }
    
    override var description: String {
        get {
            return "Car : engineLevel = \(self.engineLevel) currentSpeed = \(self.currentSpeed)"
        }
        set {
            print("\(newValue)")
        }
    }
}

let car = Car()
car.engineLevel = 10
c.currentSpeed
c.description = "소나타"

print(c.description)

// 오버로딩
// 메소드 이름은 같으나 매개변수의 변화를 줄어 새로운 매소드로 만드는 문법
