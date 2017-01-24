#!/usr/local/bin/python
#coding:utf-8

# 需要先构建这个 Rust 库： cargo build --release
#
# 运行： python embed.py

from ctypes import cdll

lib = cdll.LoadLibrary("target/release/libembed.dylib") # Linux: libembed.so； Mac: libembed.dylib；Windows: embed.dll

lib.process()

print("done!")
