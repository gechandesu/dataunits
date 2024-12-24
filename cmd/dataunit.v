// This is free and unencumbered software released into the public domain.

// Anyone is free to copy, modify, publish, use, compile, sell, or
// distribute this software, either in source code form or as a compiled
// binary, for any purpose, commercial or non-commercial, and by any
// means.

// In jurisdictions that recognize copyright laws, the author or authors
// of this software dedicate any and all copyright interest in the
// software to the public domain. We make this dedication for the benefit
// of the public at large and to the detriment of our heirs and
// successors. We intend this dedication to be an overt act of
// relinquishment in perpetuity of all present and future rights to this
// software under copyright law.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
// OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.

// For more information, please refer to <https://unlicense.org/>

/*
	dataunit - a simple CLI tool for data units convertion.
*/

module main

import os
import flag
import dataunits

@[name: 'dataunit']
struct FlagConfig {
	help bool
	from string @[short: f]
	to   string @[short: t]
mut:
	value f64 @[ignore]
}

fn main() {
	mut flags, no_matches := flag.to_struct[FlagConfig](os.args, skip: 1, style: .v) or {
		eprintln('cmdline parsing error, see -help for info')
		exit(2)
	}
	if no_matches.len > 1 {
		eprintln('unrecognized arguments: ${no_matches[1..]}')
		exit(2)
	} else if no_matches.len == 1 {
		flags.value = no_matches[0].f64()
	}
	if flags.help {
		println('convert the value between data size units.')
		println('usage: dataunit -f <unit> -t <unit> <value>')
		println('options:')
		println('  -help      print this help message and exit')
		println('  -f, -from  source data unit')
		println('  -t, -to    destination data unit')
		exit(0)
	}
	if flags.from == '' || flags.to == '' {
		eprintln('no -from or -to flag set, see -help for info')
		exit(2)
	}
	if flags.value == 0 {
		eprintln('no value passed, see -help for info')
		exit(2)
	}
	src := dataunits.from_string(flags.from) or {
		eprintln('invalid source unit: ${err}')
		exit(1)
	}
	dst := dataunits.from_string(flags.to) or {
		eprintln('invalid destination unit: ${err}')
		exit(1)
	}
	result := '${dataunits.convert(flags.value, src, dst):.20f}'
	splitted := result.split('.')
	if splitted[1].contains_only('0') {
		println(splitted[0])
	} else {
		println(result.trim_right('0'))
	}
}
