using Pkg
if any(pkg.name == "OhMyREPL" for (id, pkg) in Pkg.dependencies())
    @eval using OhMyREPL
else
    @warn("OhMyREPL not installed")
end

ENV["JULIA_CUDA_USE_BINARYBUILDER"] = "false"

atreplinit() do repl
    ENV["PLOTS_DEFAULT_BACKEND"] = "unicodeplots"
end
