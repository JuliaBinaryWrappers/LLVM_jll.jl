# Autogenerated wrapper script for LLVM_jll for x86_64-linux-musl-cxx03
export llc, opt, liblto

using libLLVM_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `llc`
const llc_splitpath = ["tools", "llc"]

# This will be filled out by __init__() for all products, as it must be done at runtime
llc_path = ""

# llc-specific global declaration
function llc(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(llc_path)
    end
end


# Relative path to `opt`
const opt_splitpath = ["tools", "opt"]

# This will be filled out by __init__() for all products, as it must be done at runtime
opt_path = ""

# opt-specific global declaration
function opt(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(opt_path)
    end
end


# Relative path to `liblto`
const liblto_splitpath = ["lib", "libLTO.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
liblto_path = ""

# liblto-specific global declaration
# This will be filled out by __init__()
liblto_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const liblto = "libLTO.so.9jl"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"LLVM")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (libLLVM_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (libLLVM_jll.LIBPATH_list,))

    global llc_path = normpath(joinpath(artifact_dir, llc_splitpath...))

    push!(PATH_list, dirname(llc_path))
    global opt_path = normpath(joinpath(artifact_dir, opt_splitpath...))

    push!(PATH_list, dirname(opt_path))
    global liblto_path = normpath(joinpath(artifact_dir, liblto_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global liblto_handle = dlopen(liblto_path)
    push!(LIBPATH_list, dirname(liblto_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

