using Test
include("hello.jl")

function run_tests_module_hello()
    hello_text = hello()
    @testset "hello tests" begin;
         @test hello_text == "hello"
    end 

    hello_text = hello("Jackson")
    @testset "hello name tests" begin;
        @test hello_text == "hello Jackson"
   end 
end