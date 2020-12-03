using Demo, Test

@testset "foo" begin
    x, y = 5, 7
    @test foo(x, y) == 7
    x = "blah"
    @test_throws MethodError foo(x, y)
end

@testset "bar" begin
    z = 4.
    @test bar(z) == 1.
end

@testset "my_f" begin
    x, y, n = 1., 1., 2
    @test Demo.my_f(x,y,n) == 1.
    x, y, n = 0.5, 0.5, 2
    @test Demo.my_f(x,y,n) == -0.5
end
