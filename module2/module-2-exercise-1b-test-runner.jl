using Test
include("module-2-exercise-1.jl")

@testset "$(get_module_2_excersise_1_author_name()): powers of three tests" begin
     powers_of_three = get_powers_of_three(0)
     @test powers_of_three == []
     powers_of_three = get_powers_of_three(1)
     @test powers_of_three == [1]
     powers_of_three = get_powers_of_three(2)
     @test [3^0, 3^1] == powers_of_three
     powers_of_three = get_powers_of_three(5)
     @test [3^0, 3^1, 3^2, 3^3, 3^4] == powers_of_three
end
