include("hello.jl")
include("Test")
function run_tests()
    hello_text = hello()
    @test hello_text == "hello"
end