using JuliaChem
using JSON
using Plots
include("full_repl.jl")

function start_calculations()
    JuliaChem.initialize() 
end

"""
run a hartree fock calculation using JuliaChem 
JuliaChem must be initialized before this method is called 

Parameters: hydrogen_radius :: AbstractFloat  - The radius between the two hydrogens in Atomic Units
for the hartree fock run. 

Returns 
energy of the system in hartrees (Atomic Units)
"""
function run_h2_hartree_fock(hydrogen_radius:: AbstractFloat) :: AbstractFloat
    file_path = create_input_file(hydrogen_radius/2)
    rhf_result = full_rhf(file_path)
    return rhf_result[1]["Energy"]
end

function create_input_file(hydrogen_radius) :: String
    input_file_JSON = JSON.parsefile(joinpath(@__DIR__, "hydrogen_template.json"))
    input_file_JSON["molecule"]["geometry"][6] = hydrogen_radius
    file_path = joinpath(@__DIR__, "input_files/H2-radius$(hydrogen_radius).json")
    io = open(file_path, "w+")
    JSON.print(io, input_file_JSON)
    close(io)
    return file_path
end

function end_calculations()
    JuliaChem.finalize()   
end

