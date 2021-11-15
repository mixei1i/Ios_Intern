import UIKit

/* 1.     დაწერეთ ფუნქცია, რომელსაც გადაეცემა ტექსტი  და აბრუნებს პალინდრომია თუ არა. (პალინდრომი არის ტექსტი რომელიც ერთნაირად იკითხება ორივე მხრიდან).
Boolean isPalindrome(String text); */



func isPalindrome(_ text: String) -> Bool {
    let lenth = text.count / 2
    for i in 0..<lenth {
        let prefix = text.index(text.startIndex, offsetBy: i)
        let sufix = text.index(text.endIndex, offsetBy: (i * -1) - 1)
        if text[prefix] != text[sufix] {
            return false
        }
    }
    return true
}

func isPalindrome_New(_ text: String) -> Bool {
    return text == String(text.reversed())
}

 
 /* 2.     გვაქვს 1,5,10,20 და 50 თეთრიანი მონეტები. დაწერეთ ფუნქცია, რომელსაც გადაეცემა თანხა (თეთრებში) და აბრუნებს მონეტების მინიმალურ რაოდენობას, რომლითაც შეგვიძლია ეს თანხა დავახურდაოთ.

Int minSplit(Int amount); */


func minSplit(_ amount: Int) -> Int {
    let numb = amount
    var temp = 0
    let a = numb / 50
    temp = numb % 50
    let b = temp / 20
    temp = temp % 20
    let c = temp / 10
    temp = temp % 10
    let d = temp / 5
    temp = temp % 5
    let e = temp / 1
    return a + b + c + d + e
}

 /* 3.     მოცემულია მასივი, რომელიც შედგება მთელი რიცხვებისგან. დაწერეთ ფუნქცია რომელსაც გადაეცემა ეს მასივი და აბრუნებს მინიმალურ მთელ რიცხვს, რომელიც 0-ზე მეტია და ამ მასივში არ შედის.

Int notContains(Int[] array); */




func newNotNontains(array: [Int]) -> Int? {
    var numbers = array
    numbers = numbers.filter{$0 > -1}
    numbers.sort(by: <)
    if numbers.count == 0 {
        return nil
    }
    for ind in 0...numbers.count-1{
        if ind != numbers.count-1{
            //ვადარებთ შემდეგს
            if numbers[ind] != numbers[ind+1]-1{
                return numbers[ind]+1
            }
        }else{
            //ბოლოში თუ გავედით
            return numbers.last!+1
        }
    }
    return nil
}
//print(newNotNontains(array: [-7,-9,-9,0,8,4,33]))

 /* 4.     მოცემულია String რომელიც შედგება „(„ და „)“ ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.

Boolean isProperly(String sequence);

მაგ: (()()) სწორი მიმდევრობაა,  ())() არასწორია  */

func isProperly(_ string: String) -> Bool {
    var correct = 0
    for bracket in string {
        if bracket == "(" {
            correct += 1
        } else if bracket == ")" {
            if (correct == 0) {
                return false
            } else {
                correct -= 1
            }
        }
    }
    let result = (correct == 0)
    return result
}
//print(isProperly("))"))



 /* 5.     გვაქვს n სართულიანი კიბე, ერთ მოქმედებაში შეგვიძლია ავიდეთ 1 ან 2 საფეხურით. დაწერეთ ფუნქცია რომელიც დაითვლის n სართულზე ასვლის ვარიანტების რაოდენობას.

Int countVariants(Int stearsCount);  */

func countVariants(stearsCount: Int) -> Int {
    let n = stearsCount
    let k = 2  // რაოდენობა 2 (1 || 2)
    var comb = 0
    func fact(_ a: Int) -> Int {
        if a == 0 {
            return 1
        } else {
            return a * fact(a - 1)
        }
    }
    comb = fact(n) / (fact(k) * fact(n - k))
    if n == 1 || n == 2 {
        return n
    } else {
        return comb
    }
}
// print(countVariants(stearsCount: 10))




/* 6.     დაწერეთ საკუთარი მონაცემთა სტრუქტურა, რომელიც საშუალებას მოგვცემს O(1) დროში წავშალოთ ელემენტი.
*/

var array = [0,1,2,3,4]
array.remove(at: 2)

