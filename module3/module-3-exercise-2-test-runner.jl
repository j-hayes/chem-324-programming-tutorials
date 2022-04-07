using Test
include("module-3-exercise-2.jl")

@testset "$(get_module_3_excersise_2_author_name()): problem 2 tests" begin
    result = problem_2()
    @test get_module_3_excersise_2_author_name() != "YOUR NAME HERE"
    @test isapprox(2, result[1]; atol = 0.05)
    @test isapprox(1, result[2]; atol = 0.05)
    @test isapprox(3, result[1] + result[2]; atol = 0.05)
    @test isapprox(5, 4*result[1] - 3*result[2]; atol = 0.05)
end

