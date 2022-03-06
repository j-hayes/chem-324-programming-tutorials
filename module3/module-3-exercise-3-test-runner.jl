using Test
include("module-3-exercise-3.jl")

#quantum number = 1
area_under_curve_zero_to_zero = one_dimensional_PIB_numerical_integration(1, 4, 100000, 0, 0)
area_under_curve_zero_to_L = one_dimensional_PIB_numerical_integration(1, 4, 100000, 0, 4)
area_under_curve_zero_to_half_L = one_dimensional_PIB_numerical_integration(1, 10, 100000, 0, 5)
area_under_curve_one_quarter_L_to_L = one_dimensional_PIB_numerical_integration(1, 50.0, 10000, 50.0 / 4, 50.0)


#quantum number = 2
area_under_curve_zero_to_zero_q2 = one_dimensional_PIB_numerical_integration(2, 4, 100000, 0, 0)
area_under_curve_zero_to_half_L_q2 = one_dimensional_PIB_numerical_integration(2, 10, 100000, 0, 5)
area_under_curve_zero_to_L_q2 = one_dimensional_PIB_numerical_integration(2, 4, 100000, 0, 4)


#quantum number = 3
area_under_curve_one_quarter_L_to_L_q3 = one_dimensional_PIB_numerical_integration(3, 50.0, 10000, 50.0 / 4, 50.0)
area_under_curve_one_quarter_L_to_L_q3 = one_dimensional_PIB_numerical_integration(3, 50.0, 10000, 50.0 / 4, 50.0)

@testset "$(get_module_2_excersise_3_author_name()): numerical integration tests" begin
    @testset " quantum number = 1" begin
        @test isapprox(0.0, area_under_curve_zero_to_zero; atol = 0.05)
        @test isapprox(1.0, area_under_curve_zero_to_L; atol = 0.05)
        @test isapprox(0.5, area_under_curve_zero_to_half_L; atol = 0.05)
        @test isapprox(0.90915, area_under_curve_one_quarter_L_to_L; atol = 0.05)
    end
    @testset " quantum number = 2" begin
        #quantum number = 2
        @test isapprox(0.0, area_under_curve_zero_to_zero_q2; atol = 0.05)
        @test isapprox(0.5, area_under_curve_zero_to_half_L_q2; atol = 0.05)
        @test isapprox(1.0, area_under_curve_zero_to_L_q2; atol = 0.05)
    end
    @testset " quantum number = 3" begin
        #quantum number = 3
        @test isapprox(0.69695, area_under_curve_one_quarter_L_to_L_q3; atol = 0.05)
    end
end


