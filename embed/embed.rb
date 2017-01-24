# 首先需要安装 ffi gem ： gem install ffi
# 还需要构建这个 Rust 库： cargo build --release
#
# 运行： ruby embed.rb

require 'ffi'

module Hello
  extend FFI::Library
  ffi_lib 'target/release/libembed.dylib' # Linux: libembed.so； Mac: libembed.dylib；Windows: embed.dll
  attach_function :process, [], :void
end

Hello.process

puts 'done'
