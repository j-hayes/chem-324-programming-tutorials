println("Hello World!")

print("My Favorite Number is: ")
print(7)

# Remove this line and copy and paste here



# This is a comment 
#= 
This is a 
multi line 
comment
=# 

println("hello world") #this is an end of line comment 

function print_my_favorite_number(favorite_number)
    print("My Favorite Number is: ")
    print(favorite_number)
end

print_my_favorite_number(7)

# Remove this line and copy and paste here


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


function square_root(number)
    return number ^ (1/2)
end

println(square_root(16))
println(square_root(square_root(16))) # notice that you can nest function calls just like in math f(g(x)) or in this case f(f(x))

an_integer = 0 
a_float = -10.2
float_zero = 0.0000

println(an_integer)
println(a_float)
println(float_zero)

are_they_equal = 12 == 3*4
are_the_strings_equal = "Hello world" == "Hello universe" 
are_the_strings_not_equal = "Hello world" != "Hello universe" 


println(are_they_equal)
println(are_the_strings_equal)
println(are_the_strings_not_equal)

my_boolean = true
print("my_boolean = ")
println(my_boolean)
not_my_boolean = !my_boolean
print("not_my_boolean = ")
println(not_my_boolean)

print("! not_my_boolean = ")
println(!not_my_boolean)

function some_variables(input_variable:: Int)
    the_number_one :: Int = 1 # an integer with the value of one
    decimal_one :: Float32 = 1.0 # a floating point decimal number with the value of 1.0
    does_jackson_like_icecream :: Bool = true # a boolean with the value of true. 
    two_is_bigger_than_one = 2 > 1
   

    added_numbers = the_number_one + decimal_one
    println(input_variable * added_numbers)
    print("Does Jackson Like Ice Cream ")
    println(does_jackson_like_icecream)

end
const unchanging_number = 15 # a global constant value

some_variables(unchanging_number)
some_variables(30)


# copy the code here

function get_item_price(give_discount::Bool)
    item_price = 100.00
    if give_discount
        return .7 * item_price
    else
        return item_price
    end
end

println(get_item_price(false))
println(get_item_price(true))


println("true and true is: $(true && true)") # $() converts values into a string "inline"
println("true and false is: $(true && false)")
println("false and true is: $(false && true)")
println("false and true is: $(false && false)")

println()
println("true or true is: $(true || true)")
println("true or false is: $(true || false)")
println("false or false is: $(false || false)")


function print_is_in_contacts_message(name::String, email_address::String) :: String
    #an example of how the && operation works
    is_jackson_message = "I am this person!"
    if name == "Jackson" && email_address == "jhayes1@iastate.edu"
        return is_jackson_message        
    end 

    if name == "Jackson"
        if email_address == "jhayes1@iastate.edu"
            return is_jackson_message # this code is unreachable because the if block is the same as the check above
        end         
    end
    
    # here we show that || is like doing two if statements that both do the same thing
    if name == "Joe" || email_address == "joechem@iastate.edu"
        return "I know $(name)"
    end 
    if name == "Nick" 
        return "I know $(name)"
    elseif email_address == "nick@iastate.edu"
        return "I know $(name)"
    end

    return "I don't know this person"
    
end

# output = print_is_in_contacts_message("Jackson", "jhayes1@iastate.edu")
# println(output)

# output = print_is_in_contacts_message("Joe", "joeWrongEmail@blah.edu")
# println(output)

# output = print_is_in_contacts_message("Nick", "nick@iastate.edu")
# println(output)

# output = print_is_in_contacts_message("Sam", "sam@blahblah.edu")
# println(output)
