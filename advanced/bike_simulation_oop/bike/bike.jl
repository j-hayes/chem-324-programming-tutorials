include("bike-attributes.jl")

mutable struct Bike 
    
    bike_attributes :: BikeAttributes
    x_position :: Int
    y_position :: Int

end