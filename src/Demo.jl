module Demo
export foo, bar

foo(x::T, y::T) where T <: Real = x + y - 5
bar(z::Float64) = foo(sqrt(z), z)

my_f(x::T, y::T,n::Int) where T <: Real = x^n+y^n-1
my_f(x::T, y::T,z::T,n::Int) where T <: Real = x^n + y^n + z^n - 1


greet() = print("Hello World!")

end # module
