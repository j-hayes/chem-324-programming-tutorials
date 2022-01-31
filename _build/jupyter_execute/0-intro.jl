println("Hello World!")

print("My Favorite Number is: ")
print(7)

# Remove this line and copy and paste here



function print_my_favorite_number(favorite_number)
    print("My Favorite Number is: ")
    print(favorite_number)
end

print_my_favorite_number(7)

println(1 + 1)
println(1 - 1)
println(5*5)
println(3 / 1.5)
println(11 ÷ 4) # this is an integer division
println(11 % 4) # this is an division remainder
println(2^8)
println(2 > 1)
println(round(2.4))
println(abs(-23))
# etc...


function some_variables()
    the_number_one :: Int = 1 # an integer with the value of one
    decimal_one :: Float32 = 1.0 # a floating point decimal number with the value of 1.0
    does_jackson_like_icecream = true # a boolean with the value of true. 
    two_is_bigger_than_one = 2 > 1

    added_numbers = the_number_one + decimal_one
    println(added_numbers)
end

some_variables()



