import Foundation

func rotate(arrayInt: inout [Int], numOfRotation: Int) {
    let rotation = numOfRotation % arrayInt.count
    let elementOnEnd = Array(arrayInt[0..<rotation])
    let elementOnFirst = Array(arrayInt[rotation..<arrayInt.count])
    arrayInt = elementOnFirst + elementOnEnd
}

var arrayInt = [1,2,3,4,5,6]
var secondArray = [2,3,5,1,2,3,9,8]
rotate(arrayInt: &arrayInt, numOfRotation: 3)
rotate(arrayInt: &secondArray, numOfRotation: 5)


