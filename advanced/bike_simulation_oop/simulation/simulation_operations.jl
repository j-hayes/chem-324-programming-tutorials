include("../bike/bike.jl")
include("../bike/bike-initializer.jl")
include("../rider/rider.jl")

function initialize_simulation(number_of_bikes, number_of_seconds) :: Simulation

    bikes = Vector{Bike}(undef, number_of_bikes)
    for i in 1:number_of_bikes
        bikes[i] = initialize_random_bike()
    end
    timed_bike_positions = zeros(Int64, (number_of_seconds, 2, number_of_bikes))
    return Simulation(bikes, 1, timed_bike_positions, number_of_seconds)

end

function run_simulation_step(simulation :: Simulation)
    
    for bike_index in 1:length(simulation.bikes)
        bike = simulation.bikes[bike_index]
        move_bike(bike, simulation)
        simulation.timed_bike_positions[simulation.current_time, 1, bike_index] = bike.x_position
        simulation.timed_bike_positions[simulation.current_time, 2, bike_index] = bike.y_position

    end
    simulation.current_time += 1
end

function print_results(simulation :: Simulation)
    for t in 1:simulation.simulation_run_time
        println("time: $(t)")
        for bi in 1:length(simulation.bikes)
            bike = simulation.bikes[bi]
            println("bike $(bike.bike_attributes.make) $(bike.bike_attributes.model): x: $(simulation.timed_bike_positions[t, 1, bi]) y: $(simulation.timed_bike_positions[t, 2, bi])")
        end
    end
end 

function run_simulation(number_of_bikes, number_of_seconds)

    simulation = initialize_simulation(number_of_bikes, number_of_seconds)

    while simulation.current_time <= number_of_seconds
        run_simulation_step(simulation)
    end
    print_results(simulation)
end