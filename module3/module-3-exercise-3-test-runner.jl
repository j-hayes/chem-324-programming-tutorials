using Test
using LinearAlgebra
include("module-3-exercise-3.jl")

@testset "$(get_module_3_excersise_3_author_name()): problem 2 tests" begin
    @test get_module_3_excersise_3_author_name() != "YOUR NAME HERE"
    @test problem_2([1 2 3;2 1 4;3 4 1]) == true
    @test problem_2([1 2 59;2 1 4;3 4 1]) == false
    @test problem_2([1 2 3 4; 2 3 4 5;3 4 5 6; 4 5 6 7]) == true
    @test problem_2([1 2 3 34; 2 3 4 5;3 4 5 6; 4 5 6 7]) == false
end

