using Random

simulation_end = 1000
num_bikes = 3

bike_positions_x = zeros(num_bikes)
bike_positions_y = zeros(num_bikes)

for bi in 1:num_bikes
    bike_positions_x[bi] = rand(1:100)
    bike_positions_y[bi] = rand(1:100)
end

simulation_steps = zeros(Int64, (simulation_end, 2, num_bikes))
for t in 1:simulation_end
    for bi in 1:num_bikes
        new_x = bike_positions_x[bi]
        new_y = bike_positions_y[bi]
        if bitrand()[1]
            possible_new_x = bike_positions_x[bi] + rand((-1, 1))
            if possible_new_x > -1 && new_x < 100 + 1
                new_x = possible_new_x
            end
        end

        if bitrand()[1]
            possible_new_y = bike_positions_y[bi] + rand((-1, 1))
            if new_y > -1 && new_y < 100 + 1
                new_y = possible_new_y
            end
        end

        move_causes_collision = false
        for other_bi in 1:num_bikes
            if new_x == bike_positions_x[other_bi] && new_y == bike_positions_y[other_bi]
                move_causes_collision = true
                break
            end
        end

        if move_causes_collision
            simulation_steps[t, 1, bi] = bike_positions_x[bi]
            simulation_steps[t, 2, bi] = bike_positions_y[bi]
        else
            simulation_steps[t, 1, bi] = new_x
            simulation_steps[t, 2, bi] = new_y
        end


    end
end

for t in 1:simulation_end
    println("time: $(t)")
    for bi in 1:num_bikes
        println("bike $(bi): x: $(simulation_steps[t, 1, bi]) y: $(simulation_steps[t, 2, bi])")
    end
end