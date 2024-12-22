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

pub type DataSize = f64

pub fn (d DataSize) bits() f64 {
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
pub const zb = tb * 1000
pub const yb = zb * 1000

pub const kib = bytes * 1024
pub const mib = kib * 1024
pub const gib = mib * 1024
pub const tib = gib * 1024
pub const pib = tib * 1024
pub const zib = tib * 1024
pub const yib = zib * 1024

pub const kbit = bit * 1000
pub const mbit = kbit * 1000
pub const gbit = mbit * 1000
pub const tbit = gbit * 1000
pub const pbit = tbit * 1000
pub const zbit = pbit * 1000
pub const ybit = zbit * 1000

pub const kibit = bit * 1024
pub const mibit = kibit * 1024
pub const gibit = mibit * 1024
pub const tibit = gibit * 1024
pub const pibit = tibit * 1024
pub const zibit = tibit * 1024
pub const yibit = zibit * 1024

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
