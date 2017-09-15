//Maple Zhang Zhang 2640197

import UIKit
import Foundation

//Operators

infix operator ^ {}
postfix operator |> {}

func ^ (left: Float, right: Float) -> Float {
    return pow(left, right)
}

postfix func |> (arr: [Int]) -> [Int]{
    return arr.sort{
        return $0 < $1
    }
}

5.0^2.0

var arr = [2, 5, 3, 4]

arr|>


// Subscript

class someNumbers {
    var valores:[Int]
    init(v:[Int]) {
        self.valores = v
    }
    
    subscript(idx:Int) -> Int {
        get {
            return valores[idx]
        }
        set(nuevoValor) {
            valores[idx] = nuevoValor * 2
        }
    }
}

var nums = someNumbers(v:arr)

nums[0] = 5
nums[1] = 2
nums[2] = 7
nums[3] = 8

nums.valores

struct Enemigo {
    var position:CGPoint
    init(p:CGPoint){
        self.position = p
    }
    
    subscript() -> CGPoint {
        get {
            return position
        }
        set(nuevoValor) {
            position = nuevoValor
        }
    }
}

var enemy1 = Enemigo(p:CGPoint(x:3, y:5))
enemy1.position
enemy1.position = CGPoint(x: 2.5, y: 3.4)
enemy1.position

var dic = ["A":1, "B":2, "C":3]

func ExisteValor(idx:String){
    guard let existe = dic[idx] else {
        print("Does not exist")
        return
    }
    print("existe \(existe)")
}

ExisteValor("A")
ExisteValor("D")
dic["D"]