# Autogenerated wrapper script for LLVM_jll for x86_64-apple-darwin
export liblto, llc, opt

using libLLVM_jll
JLLWrappers.@generate_wrapper_header("LLVM")
JLLWrappers.@declare_library_product(liblto, "@rpath/libLTO.dylib")
JLLWrappers.@declare_executable_product(llc)
JLLWrappers.@declare_executable_product(opt)
function __init__()
    JLLWrappers.@generate_init_header(libLLVM_jll)
    JLLWrappers.@init_library_product(
        liblto,
        "lib/libLTO.dylib",
        nothing,
    )

    JLLWrappers.@init_executable_product(
        llc,
        "tools/llc",
    )

    JLLWrappers.@init_executable_product(
        opt,
        "tools/opt",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
