//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    
    return operation(n1, n2)
}

/*
 * Steps on making a closure.
 *
 * 1) Start with a general function syntax.
 * 2) Remove the keyword "func" and the function name.
 * 3) Move the opening curly brace to the very begining.
 * 4) Add the keyword "in" to the previous place of the opening curly brace.
 *
 */

// (Int, Int) -> Int
func add (n1: Int, n2: Int) -> Int {
    return n1 + n2
}

// Original syntax of a function.
func multiply (n1: Int, n2: Int) -> Int {
    return n1 * n2
}

/*
 
 Closure version2 of the func multiply().
 ----------------------------------------
 {
 (n1: Int, n2: Int) -> Int in
 return n1 * n2
 }
 
 */





/*
 Closure version3 of the func multiply().
 (Infering the data types)
 ----------------------------------------
 { (n1, n2) in
 return n1 * n2
 }
 
 */





/*
 Closure version4 of the func multiply().
 (Removing the keyword "return".)
 (Using anonymouse parameters: $0, $1, $2, etc...) => $0 refers to the first param, $1 refers to the 2nd param, etc...
 --------------------------------------------------------------
 {$0 * $1}
 
 */






/*
 Closure version5 of the func multiply().
 (For "trailing closures", closures that are the last parameter of a func,
 you can just close the regular func by it closing parend, then attaching the closure block
 at the end.
 --------------------------------------------------------------
 So instead of calling func calculator() like this:
 
 calculator (n1: 1, n2: 2, {$0 * $1})
 
 you can just call it like this:
 
 calculator (n1: 1, n2: 2) {$0 * $1} or to be clearer
 
 calculator (n1: 1, n2: 2) {
 $0 * $1
 }
 
 */





// Call the funcs and inputting a closure as a parameter.
calculator (n1: 2, n2: 3, operation: add)

// Regular version for inputting func multiply() as a parameter.
calculator (n1: 2, n2: 3, operation: multiply)

// Closure version2 for inputting func multiply() as a parameter.
calculator (n1: 2, n2: 3, operation:  { (n1: Int, n2: Int) -> Int in
    return n1 * n2
})


// Closure version3 for inputting func multiply() as a parameter.
calculator (n1: 2, n2: 3, operation:  { (n1, n2) in
    return n1 * n2
})



// Closure version4 for inputting func multiply() as a parameter.
let result = calculator (n1: 2, n2: 3, operation:  {$0 * $1})
print (result)




// Closure version5 for inputting func multiply() as a parameter.
let result2 = calculator (n1: 2, n2: 3) {
    $0 * $1
}
print (result2)

//
let result3 = calculator (n1: 2, n2: 3, operation: {(n1, n2) in
    return n1 + n2
})
print (result3)


