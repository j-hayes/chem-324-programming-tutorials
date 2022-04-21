using CSV
using DataFrames
using Tables

filename = "example.csv"
file_path  = joinpath(@__DIR__, filename) #ensures we are using the correct directory regardless of how file is run

df = CSV.read(file_path, DataFrame)
display(df)
