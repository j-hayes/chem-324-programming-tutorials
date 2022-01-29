1 + sin(3)

s = 0.0
for n = 1:2:10000
    s += 1/n - 1/(n+1)
end
s # an expression on the last line (if it doesn't end with ";") is printed as "Out"

Out[2] - log(2)

R = rand(500,500)
R' * R

println("Hello world!\n")
println(stderr, "Börk börk börk, some unicode output on stderr...\n")

ccall(:printf, Cint, (Ptr{UInt8},), "Hello from C!!\n");

f(x) = x .+ 1

println(f(3))
f([1,1,2,3,5,8])

f("Hello?")

using RDatasets
sleep = dataset("lme4","sleepstudy")

using Gadfly
plot(sleep, x = "Days", y = "Reaction", Geom.point)

plot(sleep, x = "Reaction", Geom.density, color = "Subject", Scale.x_continuous(minvalue= 0, maxvalue= 500))

plot(x = sleep[!, :Reaction], Geom.histogram(bincount = 30), Scale.x_continuous(minvalue = 200), color = sleep[!, :Days])

display("text/html", """Hello <b>world</b> in <font color="red">HTML</font>!""")

mutable struct HTML
   s::String
end

Base.show(io::IO, ::MIME"text/html", x::HTML) = print(io, x.s)

x = HTML("<ul> <li> Hello from a bulleted list! </ul>")

display(x)
println(x)
