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

