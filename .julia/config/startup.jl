using Pkg
if any(pkg.name == "OhMyREPL" for (id, pkg) in Pkg.dependencies())
    @eval using OhMyREPL
else
    @warn("OhMyREPL not installed")
end
# ENV["PLOTS_DEFAULT_BACKEND"] = "unicodeplots"
ENV["JULIA_CUDA_USE_BINARYBUILDER"] = false
