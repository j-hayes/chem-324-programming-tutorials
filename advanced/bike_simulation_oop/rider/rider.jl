using Random
include("../simulation/simulation.jl")

function move_causes_collision(new_x, new_y, simulation::Simulation)
    for other_bi in 1:length(simulation.bikes)
        if new_x == simulation.bikes[other_bi].x_position && new_y == simulation.bikes[other_bi].y_position
            return true
        end
    end
    return false
end


function get_new_random_position(current)
    if bitrand()[1]
        possible_new_position =  current + rand((-1, 1))
        if possible_new_position > -1 && possible_new_position < 100 + 1
            return possible_new_position
        end
    end
    return current
end

function move_bike(bike::Bike, simulation::Simulation)
    new_x = get_new_random_position(bike.x_position)
    new_y = get_new_random_position(bike.y_position)

    collision_occured = move_causes_collision(new_x, new_y, simulation)

    if !collision_occured
        bike.x_position = new_x
        bike.y_position = new_y
    end
end
