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

module dataunits

import maps

pub type DataSize = f64

pub fn (d DataSize) bit() f64 {
	return f64(d)
}

pub fn (d DataSize) nibble() f64 {
	return f64(d / nibble)
}

pub fn (d DataSize) bytes() f64 {
	return f64(d / bytes)
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
pub const bytes = bit * 8

pub const kb = bytes * 1000
pub const mb = kb * 1000
pub const gb = mb * 1000
pub const tb = gb * 1000
pub const pb = tb * 1000
pub const eb = pb * 1000
pub const zb = eb * 1000
pub const yb = zb * 1000

pub const kib = bytes * 1024
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

const units = {
	'bit':    bit
	'nibble': nibble
	'bytes':  bytes
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

pub const prefixes = {
	// Metric size (1000^N)
	'kilo':  'k'
	'mega':  'M'
	'giga':  'G'
	'tera':  'T'
	'peta':  'P'
	'exa':   'E'
	'zetta': 'Z'
	'yotta': 'Y'
	// Binary size (1024^N)
	'kibi':  'Ki'
	'mebi':  'Mi'
	'gibi':  'Gi'
	'tebi':  'Ti'
	'pebi':  'Pi'
	'exbi':  'Ei'
	'zebi':  'Zi'
	'yobi':  'Yi'
}

// convert returns the value converted between the *from* and *to* units.
// Example:
// ```
// assert dataunits.convert(500, dataunits.mbit, dataunits.kb) == 62500
// ````
pub fn convert(value f64, from DataSize, to DataSize) f64 {
	if from == to {
		return value
	}
	return f64(value * from / to)
}

// from_string parses input and returns the actual DataSize.
// Note: Case insensitivity makes unit abbreviations such as `Mb` (megabit) and `MB` (megabyte)
// ambiguous. Use `bit` suffix for bit units. The `b` suffix will be accepted as byte unit.
// Example:
// ```
// assert dataunits.from_string('GiB')! == dataunits.gib
// assert dataunits.from_string('M')! == dataunits.mib
// assert dataunits.from_string('M', bits: true, metric: true)! == dataunits.mbit
// assert dataunits.from_string('ZeTtAbYtEs', ci: true)! == dataunits.zb
// ```
pub fn from_string(input string, params ParseParams) !DataSize {
	if !input.is_pure_ascii() {
		return error('${input} non-ASCII characters is not allowed in data size unit')
	}
	unit := parse_unit_str(input, params)
	if params.ci {
		for key, value in units {
			if key.to_lower_ascii() == unit {
				return value
			}
		}
	}
	return units[unit] or { error('${input} is not a valid data size unit') }
}

fn parse_unit_str(input string, params ParseParams) string {
	mut unit := ''
	match true {
		input.to_lower_ascii() in ['byte', 'bytes'] {
			return 'bytes'
		}
		input.to_lower_ascii() in ['bit', 'bits'] {
			return 'bit'
		}
		input.len == 1 {
			if params.metric {
				unit = input
			} else {
				unit = input.to_upper_ascii() + 'i'
			}
			if params.bits {
				unit += 'bit'
			} else {
				unit += 'B'
			}
			return unit
		}
		input.len == 2 && input[1] == u8(`b`) && params.ci == false {
			if input[0] != u8(`k`) {
				return input[..1] + 'bit'
			}
			return input[..1].to_upper_ascii() + 'bit'
		}
		else {
			unit = input
		}
	}
	if params.ci {
		unit = unit.to_lower_ascii()
	}
	if unit.len == 5 && unit.ends_with('ibit') {
		// prevent Gibit --> Git transform
		return unit
	}
	unit = unit.replace_each(maps.flat_map[string, string, string](prefixes, |k, v| [
		k,
		v,
	]))
	unit = unit.replace_each(['bytes', 'B', 'byte', 'B']).replace_once('bits', 'bit')
	return unit
}

@[params]
pub struct ParseParams {
pub:
	ci     bool // if true parse string in case insensitive mode
	bits   bool // if true interpret single letter abbreviations as bit, otherwise as byte
	metric bool // if ture apply single letter as metric prefix (power of ten), otherwise as binary
}

// to_string returns a string representation of data size unit in short form
// e.g. kB, Mbit, GiB, etc.
pub fn to_string(input DataSize) !string {
	for key, value in units {
		if value == input {
			return key
		}
	}
	return error('invalid input data size unit')
}
