using Test
include("module-2-exercise-2.jl")

@testset "sin tests" begin
    x = pi
    @test isapprox(sin(x), calculate_series_sin(x); atol = 0.05)
    x = 2*pi
    @test isapprox(sin(x), calculate_series_sin(x); atol = 0.05)
    x = 0
    @test isapprox(sin(x), calculate_series_sin(x); atol = 0.05)
    x = pi/7
    @test isapprox(sin(x), calculate_series_sin(x); atol = 0.05)
end
