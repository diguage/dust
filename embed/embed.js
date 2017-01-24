// 首先需要安装 ffi ： npm install ffi
// 还需要构建这个 Rust 库： cargo build --release
//
// 运行： node embed.js

var ffi = require('ffi');

var lib = ffi.Library('target/release/libembed', {
  'process': ['void', []]
});

lib.process();

console.log("done!");
