include("../bike/bike.jl")

mutable struct Simulation
    bikes :: Vector{Bike}
    current_time :: Int
    timed_bike_positions
    simulation_run_time :: Int
end
