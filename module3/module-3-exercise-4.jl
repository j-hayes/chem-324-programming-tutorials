using LinearAlgebra

function get_module_3_excersise_4_author_name()
    return "YOU NAME HER"
end

function problem_4(a)
    
    A = [
    a 1 0 0 0 1
    1 a 1 0 0 0
    0 1 a 1 0 0 
    0 0 1 a 1 0 
    0 0 0 1 a 1
    1 0 0 0 1 a
    ]

    eigen_vals = []
    eigen_vectors = []
    return eigen_vals, eigen_vectors
end
