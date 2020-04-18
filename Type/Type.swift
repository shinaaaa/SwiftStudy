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

class SUV: car {
    var fourWheel = false
}
let jeep: Vehicle = SUV()
