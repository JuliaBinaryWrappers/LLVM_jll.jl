# Autogenerated wrapper script for LLVM_jll for x86_64-apple-darwin14-cxx03
export llvm_config, clang, llc, libllvm, libclang, liblto, opt

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `llvm_config`
const llvm_config_splitpath = ["tools", "llvm-config"]

# This will be filled out by __init__() for all products, as it must be done at runtime
llvm_config_path = ""

# llvm_config-specific global declaration
function llvm_config(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
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
        f(llvm_config_path)
    end
end


# Relative path to `clang`
const clang_splitpath = ["tools", "clang"]

# This will be filled out by __init__() for all products, as it must be done at runtime
clang_path = ""

# clang-specific global declaration
function clang(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
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
        f(clang_path)
    end
end


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


# Relative path to `libllvm`
const libllvm_splitpath = ["lib", "libLLVM.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libllvm_path = ""

# libllvm-specific global declaration
# This will be filled out by __init__()
libllvm_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libllvm = "@rpath/libLLVM.dylib"


# Relative path to `libclang`
const libclang_splitpath = ["lib", "libclang.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libclang_path = ""

# libclang-specific global declaration
# This will be filled out by __init__()
libclang_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libclang = "@rpath/libclang.dylib"


# Relative path to `liblto`
const liblto_splitpath = ["lib", "libLTO.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
liblto_path = ""

# liblto-specific global declaration
# This will be filled out by __init__()
liblto_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const liblto = "@rpath/libLTO.dylib"


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


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"LLVM")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global llvm_config_path = normpath(joinpath(artifact_dir, llvm_config_splitpath...))

    push!(PATH_list, dirname(llvm_config_path))
    global clang_path = normpath(joinpath(artifact_dir, clang_splitpath...))

    push!(PATH_list, dirname(clang_path))
    global llc_path = normpath(joinpath(artifact_dir, llc_splitpath...))

    push!(PATH_list, dirname(llc_path))
    global libllvm_path = normpath(joinpath(artifact_dir, libllvm_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libllvm_handle = dlopen(libllvm_path)
    push!(LIBPATH_list, dirname(libllvm_path))

    global libclang_path = normpath(joinpath(artifact_dir, libclang_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libclang_handle = dlopen(libclang_path)
    push!(LIBPATH_list, dirname(libclang_path))

    global liblto_path = normpath(joinpath(artifact_dir, liblto_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global liblto_handle = dlopen(liblto_path)
    push!(LIBPATH_list, dirname(liblto_path))

    global opt_path = normpath(joinpath(artifact_dir, opt_splitpath...))

    push!(PATH_list, dirname(opt_path))
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

