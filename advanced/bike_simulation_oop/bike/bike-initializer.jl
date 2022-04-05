using Random
include("bike.jl")

function initialize_random_bike() :: Bike 
    make_num = rand((1,100))
    model_num = rand((1,10))
    weight = rand(Float64) * 5 + 15
    drag_coefficient = 1 - rand(Float64)
    bike_attributes = BikeAttributes("Make$(make_num)", "Model$(model_num)", weight, drag_coefficient)
    x = rand((1,100))
    y = rand((1,100))
    bike = Bike(bike_attributes, x, y)
    return bike

end