using LinearAlgebra
using Statistics
include("../module2/hello.jl")

function do_some_stuff(x:: Matrix)
    return det(x)
end

function do_other_stuff(x:: Matrix)
    return x + x
end

function do_statistics_stuff(x:: Matrix)
    return mean(x)
end

println(hello("Jackson"))

display(do_some_stuff([1 2; 3 4]))
println("")
display(do_other_stuff([1 2 3 4]))
println("")
display(do_statistics_stuff([1 2 3 4]))

