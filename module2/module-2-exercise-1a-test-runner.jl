using Test
include("module-2-exercise-1.jl")

@testset "$(get_module_2_excersise_1_author_name()): odd number tests" begin
     odd_numbers = get_odd_numbers(0)
     @test [] == odd_numbers
     odd_numbers = get_odd_numbers(1)
     @test [1] == odd_numbers
     odd_numbers = get_odd_numbers(5)
     @test [1, 3, 5, 7, 9] == odd_numbers
end


