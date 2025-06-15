import Foundation

func calculate(_ num1: Double, _ num2: Double, operation: String) -> Double? {
    switch operation {
    case "+":
        return num1 + num2
    case "-":
        return num1 - num2
    case "*":
        return num1 * num2
    case "/":
        if num2 != 0 {
            return num1 / num2
        } else {
            print("Cannot divide by Zero")
            return nil
        }
    default:
        print("Invalid Operation. Please use +, -, *, / only!!!!")
        return nil
    }
}

print("Enter the first number.")
if let input1 = readLine(), let num1 = Double(input1) {
    print("Enter the second number.")
    if let input2 = readLine(), let num2 = Double(input2) {
        print("Choose operation(+, -, *, /)")
        if let operation = readLine() {
            if let result = calculate(num1, num2, operation: operation) {
                print("Result: \(result)")
            }
        } else {
            print("Invalid Operation input.")
        }
    } else {
        print("Invalid second input for the second number")
    }
} else {
    print("Invaild input for the first number")
}
