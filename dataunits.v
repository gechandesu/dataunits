// This is free and unencumbered software released into the public domain.
//
// Anyone is free to copy, modify, publish, use, compile, sell, or
// distribute this software, either in source code form or as a compiled
// binary, for any purpose, commercial or non-commercial, and by any
// means.
//
// In jurisdictions that recognize copyright laws, the author or authors
// of this software dedicate any and all copyright interest in the
// software to the public domain. We make this dedication for the benefit
// of the public at large and to the detriment of our heirs and
// successors. We intend this dedication to be an overt act of
// relinquishment in perpetuity of all present and future rights to this
// software under copyright law.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
// OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.
//
// For more information, please refer to <https://unlicense.org/>

module dataunits

pub type DataSize = f64

pub fn (d DataSize) bit() f64 {
	return f64(d)
}

pub fn (d DataSize) nibble() f64 {
	return f64(d / nibble)
}

pub fn (d DataSize) byte() f64 {
	return f64(d / byte)
}

pub fn (d DataSize) kb() f64 {
	return f64(d / kb)
}

pub fn (d DataSize) mb() f64 {
	return f64(d / mb)
}

pub fn (d DataSize) gb() f64 {
	return f64(d / gb)
}

pub fn (d DataSize) tb() f64 {
	return f64(d / tb)
}

pub fn (d DataSize) pb() f64 {
	return f64(d / pb)
}

pub fn (d DataSize) eb() f64 {
	return f64(d / eb)
}

pub fn (d DataSize) zb() f64 {
	return f64(d / zb)
}

pub fn (d DataSize) yb() f64 {
	return f64(d / yb)
}

pub fn (d DataSize) kib() f64 {
	return f64(d / kib)
}

pub fn (d DataSize) mib() f64 {
	return f64(d / mib)
}

pub fn (d DataSize) gib() f64 {
	return f64(d / gib)
}

pub fn (d DataSize) tib() f64 {
	return f64(d / tib)
}

pub fn (d DataSize) pib() f64 {
	return f64(d / pib)
}

pub fn (d DataSize) eib() f64 {
	return f64(d / eib)
}

pub fn (d DataSize) zib() f64 {
	return f64(d / zib)
}

pub fn (d DataSize) yib() f64 {
	return f64(d / yib)
}

pub fn (d DataSize) kbit() f64 {
	return f64(d / kbit)
}

pub fn (d DataSize) mbit() f64 {
	return f64(d / mbit)
}

pub fn (d DataSize) gbit() f64 {
	return f64(d / gbit)
}

pub fn (d DataSize) tbit() f64 {
	return f64(d / tbit)
}

pub fn (d DataSize) pbit() f64 {
	return f64(d / pbit)
}

pub fn (d DataSize) ebit() f64 {
	return f64(d / ebit)
}

pub fn (d DataSize) zbit() f64 {
	return f64(d / zbit)
}

pub fn (d DataSize) ybit() f64 {
	return f64(d / ybit)
}

pub fn (d DataSize) kibit() f64 {
	return f64(d / kibit)
}

pub fn (d DataSize) mibit() f64 {
	return f64(d / mibit)
}

pub fn (d DataSize) gibit() f64 {
	return f64(d / gibit)
}

pub fn (d DataSize) tibit() f64 {
	return f64(d / tibit)
}

pub fn (d DataSize) pibit() f64 {
	return f64(d / pibit)
}

pub fn (d DataSize) eibit() f64 {
	return f64(d / eibit)
}

pub fn (d DataSize) zibit() f64 {
	return f64(d / zibit)
}

pub fn (d DataSize) yibit() f64 {
	return f64(d / yibit)
}

pub const bit = DataSize(1)
pub const nibble = bit * 4
pub const byte = bit * 8

pub const kb = byte * 1000
pub const mb = kb * 1000
pub const gb = mb * 1000
pub const tb = gb * 1000
pub const pb = tb * 1000
pub const eb = pb * 1000
pub const zb = eb * 1000
pub const yb = zb * 1000

pub const kib = byte * 1024
pub const mib = kib * 1024
pub const gib = mib * 1024
pub const tib = gib * 1024
pub const pib = tib * 1024
pub const eib = pib * 1024
pub const zib = eib * 1024
pub const yib = zib * 1024

pub const kbit = bit * 1000
pub const mbit = kbit * 1000
pub const gbit = mbit * 1000
pub const tbit = gbit * 1000
pub const pbit = tbit * 1000
pub const ebit = pbit * 1000
pub const zbit = ebit * 1000
pub const ybit = zbit * 1000

pub const kibit = bit * 1024
pub const mibit = kibit * 1024
pub const gibit = mibit * 1024
pub const tibit = gibit * 1024
pub const pibit = tibit * 1024
pub const eibit = pibit * 1024
pub const zibit = eibit * 1024
pub const yibit = zibit * 1024

const str_unit = {
	'bit':    bit
	'nibble': nibble
	'byte':   byte
	'kB':     kb
	'MB':     mb
	'GB':     gb
	'TB':     tb
	'PB':     pb
	'EB':     eb
	'ZB':     zb
	'YB':     yb
	'KiB':    kib
	'MiB':    mib
	'GiB':    gib
	'TiB':    tib
	'PiB':    pib
	'EiB':    eib
	'ZiB':    zib
	'YiB':    yib
	'kbit':   kbit
	'Mbit':   mbit
	'Gbit':   gbit
	'Tbit':   tbit
	'Pbit':   pbit
	'Ebit':   ebit
	'Zbit':   zbit
	'Ybit':   ybit
	'Kibit':  kibit
	'Mibit':  mibit
	'Gibit':  gibit
	'Tibit':  tibit
	'Pibit':  pibit
	'Eibit':  eibit
	'Zibit':  zibit
	'Yibit':  yibit
}

const unit_str = {
	bit:    'bit'
	nibble: 'nibble'
	byte:   'byte'
	kb:     'kB'
	mb:     'MB'
	gb:     'GB'
	tb:     'TB'
	pb:     'PB'
	eb:     'EB'
	zb:     'ZB'
	yb:     'YB'
	kib:    'KiB'
	mib:    'MiB'
	gib:    'GiB'
	tib:    'TiB'
	pib:    'PiB'
	eib:    'EiB'
	zib:    'ZiB'
	yib:    'YiB'
	kbit:   'kbit'
	mbit:   'Mbit'
	gbit:   'Gbit'
	tbit:   'Tbit'
	pbit:   'Pbit'
	ebit:   'Ebit'
	zbit:   'Zbit'
	ybit:   'Ybit'
	kibit:  'Kibit'
	mibit:  'Mibit'
	gibit:  'Gibit'
	tibit:  'Tibit'
	pibit:  'Pibit'
	eibit:  'Eibit'
	zibit:  'Zibit'
	yibit:  'Yibit'
}

pub const prefixes = {
	// Metric size (N * 1000)
	'kilo':  'k'
	'mega':  'M'
	'giga':  'G'
	'tera':  'T'
	'peta':  'P'
	'exa':   'E'
	'zetta': 'Z'
	'yotta': 'Y'
	// Binary size (N * 1024)
	'kibi':  'Ki'
	'mebi':  'Mi'
	'gibi':  'Gi'
	'tebi':  'Ti'
	'pebi':  'Pi'
	'exbi':  'Ei'
	'zebi':  'Zi'
	'yobi':  'Yi'
}

// vfmt off
const prefixes_array = [
	'byte', 'B',
	'kilo', 'k', 'mega', 'M', 'giga', 'G', 'tera', 'T',
	'peta', 'P', 'exa', 'E', 'zetta', 'Z', 'yotta', 'Y',
	'kibi', 'Ki', 'mebi', 'Mi', 'gibi', 'Gi', 'tebi', 'Ti',
	'pebi', 'Pi', 'exbi', 'Ei', 'zebi', 'Zi', 'yobi', 'Yi'
]
// vfmt on

// convert returns the value converted between the *from* and *to* units.
// Example:
// ```v
// assert dataunits.convert(500, dataunits.mbit, dataunits.kb) == 62500
// ````
pub fn convert(value f64, from DataSize, to DataSize) f64 {
	if from == to {
		return value
	}
	return f64(value * from / to)
}

// from_string parses input and returns the actual DataSize.
// Note: Case insensitivity makes unit abbreviations such as 'Mb' (megabit) and 'MB' (megabyte)
// ambiguous. Use 'bit' suffix for values in bits. The 'b' suffix will be accepted as byte unit.
// Example:
// ```v
// assert dataunits.from_string('GiB')! == dataunits.gib
// assert dataunits.from_string('M')! == dataunits.mb
// assert dataunits.from_string('M', in_bits: true)! == dataunits.mbit
// assert dataunits.from_string('ZeTtAbYtEs', case_insensitive: true)! == dataunits.zb
// ```
pub fn from_string(input string, params ParseParams) !DataSize {
	if !input.is_pure_ascii() {
		return error('${input} non-ASCII characters is not allowed in data unit')
	}
	unit := parse_str(input, params)
	if params.case_insensitive {
		for key, value in str_unit {
			if key.to_lower_ascii() == unit.to_lower_ascii() {
				return value
			}
		}
	}
	return str_unit[unit] or { error('${input} is not a valid data unit') }
}

fn parse_str(input string, params ParseParams) string {
	mut unit := ''
	match true {
		input.to_lower_ascii() in ['byte', 'bytes'] {
			return 'byte'
		}
		input.to_lower_ascii() in ['bit', 'bits'] {
			return 'bit'
		}
		input.len == 1 {
			if params.binary_size {
				unit = input.to_upper_ascii() + 'i'
			} else {
				unit = input
			}
			if params.in_bits {
				unit += 'bit'
			} else {
				unit += 'B'
			}
			return unit
		}
		input.len == 2 && input[1] == u8(`i`) {
			if params.in_bits {
				return input + 'bit'
			}
			return input + 'B'
		}
		input.len == 3 && input.ends_with('ib') && params.case_insensitive == false {
			// Mib -> Mibit
			return input[..2] + 'bit'
		}
		input.len == 2 && input[1] == u8(`b`) && params.case_insensitive == false {
			// Mb -> Mbit
			return input[..1] + 'bit'
		}
		else {
			unit = input
		}
	}
	if params.case_insensitive {
		unit = unit.to_lower_ascii()
	}
	if unit.len == 5 && unit.ends_with('ibit') {
		// prevent Gibit --> Git transform
		return unit
	}
	unit = unit.all_before('s').replace_each(prefixes_array)
	return unit
}

@[params]
pub struct ParseParams {
pub:
	// if true parse string in case insensitive mode
	case_insensitive bool
	// if true accept input such 'M', 'Gi' as bits, otherwise as bytes
	in_bits bool
	// if true accept single letter prefix as binary (power of two), otherwise as metric prefix
	binary_size bool
}

// to_string returns a string representation of data unit in short form e.g. kB, Mbit, GiB, etc.
pub fn to_string(input DataSize) !string {
	return unit_str[input] or { error('invalid input data unit') }
}
