import UIKit
//
////1.1
//let pythonName = "Вася"
//let mouseName = "Жора"
//
////1.2
//var dayOfWeek = "Monday"
//dayOfWeek = "Fryday"
//
////1.3
//let americanCountry = "USA"
//let europeanCountry = "France"
//var someCountry = "Italy"
//
////2.1
//let number: Int
//
////2.2
//let someNumber = 10.0
//
////2.3
//var someFloatNumber: Float = 24
//someFloatNumber = 44
//
////3.1
//let totalSum = 3500.0
//let dayPetMount = 30
//let incomePerDay = 50.0
//
//let totalMount = ceil(totalSum / (Double(dayPetMount) * incomePerDay))
//
////3.2
//let firstQuarterGrade = Int.random(in: 2...5)
//let secondQuarterGrade = Int.random(in: 2...5)
//let thirdQuarterGrade = Int.random(in: 2...5)
//let fourthQuarterGrade = Int.random(in: 2...5)
//
//let yearlyEstimate = (Double(firstQuarterGrade) + Double(secondQuarterGrade) + Double(thirdQuarterGrade) + Double(fourthQuarterGrade)) / 4
//
////3.3
//var someDoubleNumber = 4.33
//someDoubleNumber *= 20
//
////3.4
//let applicantScores = Int.random(in: 1...100)
//
//let result = applicantScores >= 80

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func checkTree(_ root: TreeNode?) -> Bool {
        guard let val = root?.val else { return false }
        guard let left = root?.left else { return false }
        guard let right = root?.right else { return false }
        let sum = left + right
        if sum == val {
            return true
        } else {
            return false
        }
    }
}

let firstExample = TreeNode (10, 4, 6)
