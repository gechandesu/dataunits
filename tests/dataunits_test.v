import dataunits

fn test_convert() {
	assert (dataunits.nibble * 4).bytes() == 2
	assert (dataunits.bit * 8).bit() == 8
	assert (dataunits.bit * 8).bytes() == 1
	assert (dataunits.gib * 10).mib() == 10240
	assert (dataunits.gib * 5000).bytes() == i64(5368709120000)
	assert (dataunits.mbit * 500).kb() == 62500
	assert dataunits.convert(500, dataunits.mbit, dataunits.kb) == 62500
	assert dataunits.DataSize(4000 * dataunits.gib).bytes() == f64(4294967296000)
}

fn test_from_string() {
	assert dataunits.from_string('GiB')! == dataunits.gib
	assert dataunits.from_string('M')! == dataunits.mib
	assert dataunits.from_string('m', ci: true)! == dataunits.mib
	assert dataunits.from_string('M', bits: true, metric: true)! == dataunits.mbit
	assert dataunits.from_string('ZeTtAbYtEs', ci: true)! == dataunits.zb
	assert dataunits.from_string('bytes')! == dataunits.bytes
	assert dataunits.from_string('byte')! == dataunits.bytes
	assert dataunits.from_string('megabytes')! == dataunits.mb
	assert dataunits.from_string('megabyte')! == dataunits.mb
	assert dataunits.from_string('exbibit')! == dataunits.eibit
	assert dataunits.from_string('Mb')! == dataunits.mbit
	assert dataunits.from_string('MB')! == dataunits.mb
	assert dataunits.from_string('Mb', ci: true)! == dataunits.mb
	assert dataunits.from_string('Gibit')! == dataunits.gibit
	assert dataunits.from_string('gibit', ci: true)! == dataunits.gibit
	assert dataunits.from_string('Gib', ci: true)! == dataunits.gib
}
