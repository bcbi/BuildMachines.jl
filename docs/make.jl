using BuildMachines
using Documenter

DocMeta.setdocmeta!(BuildMachines, :DocTestSetup, :(using BuildMachines); recursive=true)

makedocs(;
    modules=[BuildMachines],
    authors="Dilum Aluthge",
    repo="https://github.com/bcbi/BuildMachines.jl/blob/{commit}{path}#{line}",
    sitename="BuildMachines.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://bcbi.github.io/BuildMachines.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/bcbi/BuildMachines.jl",
    devbranch="main",
)
