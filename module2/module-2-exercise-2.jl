using Test

function get_module_2_excersise_1_author_name()
    return "PUT YOUR NAME HERE"
end

function calculate_sin_series_term(i, x)    
    return 0 # implement your sin series term here
end

function calculate_series_sin(x)
    series_expansion_value = 0 
    if x > 2*pi 
        throw(error("x must be less than 2π"))
    end
    for i in 0:100
        # implement the loop here
        i+= 1
    end
    return series_expansion_value
end
