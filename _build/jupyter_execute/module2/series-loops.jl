println("The copy paste way: (bad)")

println("hello world")
println("hello world")
println("hello world")
println("hello world")
println("hello world")

println("-----------")
println("The loop way:")

for i in 1:5
    println("hello world")
end


summation_value = 0
for i in 1:10
    summation_value += i 
    println("value at i=$(i): $(summation_value)")
end
println("final value: $(summation_value)")


i = 0
summation_value = 0

while i <= 10
    summation_value += i
    i += 1 # make sure to do the incrementing of i as the last line of code in the loop or you will get the wrong result 
end
println("final value: $(summation_value)")


for i in 1:10
    if i % 2 == 0 # does i divided by 2 have a remainder not equal to zero
        println("$(i)")
    end    
end

for i in 1:5   
    println("$(2*i)")   
end

function print_iteration_message(index, summation_value)
    println("value at i=$(index): $(summation_value)")
end

summation_value = 0
for i in 1:10
    summation_value += i 
    print_iteration_message(i, summation_value)
end
println("final value: $(summation_value)")




point_int_space_origin = [0,0,0]
display(point_int_space_origin) # display is a fancy print function with more information about the object you pass in

second_point = point_int_space_origin + [1,1,2]
display(second_point)

multiplied_point = [1,2,3] .* [2,2,2] 
display(multiplied_point)
#which is the same as

multiplied_point = 2*[1,2,3] 
display(multiplied_point)

#but could be used to do 
multiplied_point = [1,2,3] .* [3,5,10] 
display(multiplied_point)

values = [10,20,30]
### print the first value in the array of values
println(values[1])

longer_vector = [12.23,1,3,.12,5,6,7,-8.32]
sum_of_first_two_terms = longer_vector[1] + longer_vector[2]
println(sum_of_first_two_terms)


function dot_product(vector1, vector2)
    @assert length(vector1) == length(vector2) # makes sure the vectors are the same size, if not throws an error
    
    dot_product_value = 0
    for i in 1:length(vector1)
        dot_product_value += vector1[i] * vector2[i]
    end
    return dot_product_value
end

vector_a = [1,2,3]
vector_b = [4,5,6]

value = dot_product(vector_a, vector_b)
println(value)
## we can compare this with the built in julia function for dot product 


using LinearAlgebra # built in julia library providing linear algebra functions such as dot(): which computes the dot product

vector_a = [1,2,3]
vector_b = [4,5,6]
julia_computed_value = dot(vector_a,vector_b)
println(julia_computed_value)


using LinearAlgebra
powers_of_2 = zeros(100) #array with length 100, all values = 0 
powers_of_4 = zeros(100)

for i in 1:100
    powers_of_2[i] = 2^i
    powers_of_4[i] = 4^i
end

dot_product_value = dot(powers_of_2, powers_of_4)
print(dot_product_value) # ya that is a big number

using LinearAlgebra 
using Statistics # statistical functions
our_vector = [1,2,3,4,5,6,7,8,9,10,15, 30]
our_sum = sum(our_vector)
our_average = mean(our_vector)
our_median = median(our_vector)


println(our_sum)
println(our_average)
println(our_median)


# big(number) is a function that creates a 
# number that julia can handle more reasoly if the number is very large

function calculate_exp_series_term(i)
    return (x^i)/factorial(big(i)) 
end

function calculate_series_exponential(x)
    series_expansion_value = 0 
    i = 0 #iteration index 
    exp_exact = exp(x)

    # loop until the difference between exact value and series expansion value
    # stop at 10000 iterations 
    while abs(exp_exact - series_expansion_value) > 10^-7 && i < 10000
        series_term_i = calculate_exp_series_term(i)
        series_expansion_value += series_term_i
        i+= 1
    end
    println("number of iterations $(i)")
    return series_expansion_value
end

x = 5
exp_exact = exp(x)
exp_exact = round(exp_exact; digits=10) #don't worry too much about how this rounding works
println("$(exp_exact) exp_exact")
series_expansion_value = calculate_series_exponential(x)
#round off some extra values
rounded_value = Float64(round(series_expansion_value; digits=10)) #don't worry too much about how this rounding works
println("$(rounded_value) series_expansion_value")


function calculate_cos_series_term(i)
    return (-1)^i*(x^(2*i))/factorial(big(2*i)) 
end

function calculate_series_cos(x)
    series_expansion_value = 0 
    i = 0 #iteration index 
    exact = cos(x)
    # loop until the difference between exact value and series expansion value
    # stop at 10000 iterations 
    while abs(exact - series_expansion_value) > 10^-7 && i < 10000
        series_term_i = calculate_cos_series_term(i)
        series_expansion_value += series_term_i
        i+= 1
    end
    println("number of iterations $(i)")
    return series_expansion_value
end

x = .4
cos_exact = cos(x)
cos_exact = round(cos_exact; digits=10) #don't worry too much about how this rounding works
println("$(cos_exact) cos_exact")
series_expansion_value = calculate_series_cos(x)
#round off some extra values
rounded_value = Float64(round(series_expansion_value; digits=10)) #don't worry too much about how this rounding works
println("$(rounded_value) series_expansion_value")


include("hello.jl")
hello_text = hello()
println(hello_text)

using Test
expected_value = 5
our_value = sqrt(25)
@test expected_value == our_value

using Test
expected_value = 5
wrong_value = 25 / 3
@testset "hello tests" begin
    @test our_value == wrong_value # a test that will fail
end

include("hello-test-runner.jl")
run_tests_module_hello()

include("module-2-exercise-1.jl")
odd_numbers = get_odd_numbers(7)
display(odd_numbers)


include("module-2-exercise-1.jl")
powers_of_there = get_powers_of_three(4)
display(powers_of_there)

include("module-2-exercise-1a-test-runner.jl") #including the file runs the tests


include("module-2-exercise-1b-test-runner.jl") #including the file runs the tests





complex_1 = (1 + 2im)
print("A complex number: ")
println(complex_1)

print("A complex number addition operation: ")
complex_3 = complex_1 + (1 + 2im)
println(complex_3 )

print("real part of complex 1: ")
println(real(complex_1))
