using PlasmaFluidSim
using Documenter

DocMeta.setdocmeta!(PlasmaFluidSim, :DocTestSetup, :(using PlasmaFluidSim); recursive=true)

makedocs(;
    modules=[PlasmaFluidSim],
    authors="Jan Kuhfeld <jan.kuhfeld@rub.de> and contributors",
    repo="https://github.com/jqfeld/PlasmaFluidSim.jl/blob/{commit}{path}#{line}",
    sitename="PlasmaFluidSim.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jqfeld.github.io/PlasmaFluidSim.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jqfeld/PlasmaFluidSim.jl",
    devbranch="main",
)
