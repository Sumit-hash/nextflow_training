// println "Hello, World!" //println method implicitly appends a new line character to the printed string.

// variables

x = 1
println x

x = new java.util.Date()
println x

x = -3.1499392
println x

x = false
println x

x = "Hi"
println x

def x = 'foo' // local variable defined

list = [10, 20, 30, 40]

println list

list = [10, 20, 30, 40]

println list[0]
println list.get(0)

list = [10, 20, 30, 40]

println list.size()

// list = [10, 20, 30, 40]

// assert list[0] == 20 // this will give error as in that array, index 0 is 10 and we are checking 20 here.
println list

list = [0, 1, 2]
assert list[-1] == 2 //true from reverse
assert list[-1..0] == list.reverse()