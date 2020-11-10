# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LLVM_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("LLVM")
JLLWrappers.@generate_main_file("LLVM", UUID("86de99a1-58d6-5da7-8064-bd56ce2e322c"))
end  # module LLVM_jll
