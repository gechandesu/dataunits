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

const units = {
	'bit':    dataunits.bit
	'nibble': dataunits.nibble
	'bytes':  dataunits.bytes
	'kb':     dataunits.kb
	'mb':     dataunits.mb
	'gb':     dataunits.gb
	'tb':     dataunits.tb
	'pb':     dataunits.pb
	'zb':     dataunits.zb
	'yb':     dataunits.yb
	'kib':    dataunits.kib
	'mib':    dataunits.mib
	'gib':    dataunits.gib
	'tib':    dataunits.tib
	'pib':    dataunits.pib
	'zib':    dataunits.zib
	'yib':    dataunits.yib
	'kbit':   dataunits.kbit
	'mbit':   dataunits.mbit
	'gbit':   dataunits.gbit
	'tbit':   dataunits.tbit
	'pbit':   dataunits.pbit
	'zbit':   dataunits.zbit
	'ybit':   dataunits.ybit
	'kibit':  dataunits.kibit
	'mibit':  dataunits.mibit
	'gibit':  dataunits.gibit
	'tibit':  dataunits.tibit
	'pibit':  dataunits.pibit
	'zibit':  dataunits.zibit
	'yibit':  dataunits.yibit
}

fn units_str() string {
	mut str := []string{}
	for key, _ in units {
		str << key
	}
	return str.join(', ')
}

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
		println('convert the value between *from* and *to* units.')
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
	unit_from := units[flags.from.to_lower()] or {
		eprintln('invalid unit ${flags.from}, valid ones: ${units_str()}')
		exit(1)
	}
	unit_to := units[flags.to.to_lower()] or {
		eprintln('invalid unit ${flags.to}, valid ones: ${units_str()}')
		exit(1)
	}
	result := '${dataunits.convert(flags.value, unit_from, unit_to):.20f}'
	splitted := result.split('.')
	if splitted[1].contains_only('0') {
		println(splitted[0])
	} else {
		println(result.trim_right('0'))
	}
}
