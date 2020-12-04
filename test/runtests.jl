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
    x, y, z, n = 1., 1., 1., 2
    @test Demo.my_f(x,y,n) == 1.
    @test Demo.my_f(x,y,z,n) == 2.
    x, y= 0.5, 0.5
    @test Demo.my_f(x,y,n) == -0.5
    @test Demo.my_f(x,y,z,n) == 0.5
end
