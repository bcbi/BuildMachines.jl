using BuildMachines
using Test

@testset "BuildMachines.jl" begin
    @test BuildMachines._hello_world() == "Hello world!"
end
