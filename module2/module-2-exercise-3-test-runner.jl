using Test
include("module-2-exercise-3.jl")

@testset "$(get_module_2_excersise_3_author_name()): count_even_numbers tests" begin
    @test 0 == count_even_numbers([])
    @test 0 == count_even_numbers([1])
    @test 1 == count_even_numbers([2])
    @test 2 == count_even_numbers([2,4])
    @test 2 == count_even_numbers([2,4,1])
    @test 1 == count_even_numbers([1,3,5,2,3]) 
end


