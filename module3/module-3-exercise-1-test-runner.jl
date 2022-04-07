using Test
include("module-3-exercise-1.jl")

@testset "$(get_module_3_excersise_1_author_name()): matrix operations tests" begin
    @test get_module_3_excersise_1_author_name() != "YOUR NAME HERE"
    @test problem_1_1() == [672 2163 -1073; 134 -57 229; 50 -183 187]
    @test problem_1_2() == [-2 126 23; 176 -225 -93; 44 -60 30]
    @test problem_1_3() == [4 93 49; 100 125 -87; 70 26 36]
end

