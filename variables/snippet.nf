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

my_channel_1 = Channel.of(1, 2, 3)
my_channel_2 = Channel.of('a', 'b')
my_channel_3 = Channel.of('z')

my_channel_1
    .mix(my_channel_2, my_channel_3)
    .view()


foo = [1, 2, 3]
bar = [4, 5, 6]

Channel
    .of(foo, bar)
    .flatten()
    .view()

Channel
    .of(1, 2, 3, 4)
    .collect()
    .view() //collect operator collects all of the items emitted by a channel in a list and returns the object as a sole emission ,The result of the collect operator is a value channel.


Channel
    .of(1, 2, 3, 40, 50)
    .branch {
        small: it < 10
        large: it > 10
    }
    .set { result }

result.small.view { "$it is small" }
result.large.view { "$it is large" }


Channel
    .fromPath("data/meta/patients_1.csv") //, checkIfExists: true can be used if want to be sure if file exists or not
    .splitCsv() //header:true if file containes header
    .view { row -> "${row[0]}, ${row[3]}" } // split csv file