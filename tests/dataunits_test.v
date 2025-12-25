import dataunits

fn test_convert() {
	assert (dataunits.nibble * 4).byte() == 2
	assert (dataunits.bit * 8).bit() == 8
	assert (dataunits.bit * 8).byte() == 1
	assert (dataunits.gib * 10).mib() == 10240
	assert (dataunits.gib * 5000).byte() == f64(5368709120000)
	assert (dataunits.mbit * 500).kb() == 62500
	assert dataunits.convert(500, dataunits.mbit, dataunits.kb) == 62500
	assert dataunits.DataSize(4000 * dataunits.gib).byte() == f64(4294967296000)
}

fn test_from_string() {
	assert dataunits.from_string('GiB')! == dataunits.gib
	assert dataunits.from_string('M')! == dataunits.mb
	assert dataunits.from_string('m', case_insensitive: true)! == dataunits.mb
	assert dataunits.from_string('M', binary_size: true)! == dataunits.mib
	assert dataunits.from_string('M', in_bits: true)! == dataunits.mbit
	assert dataunits.from_string('ZeTtAbYtEs', case_insensitive: true)! == dataunits.zb
	assert dataunits.from_string('bytes')! == dataunits.byte
	assert dataunits.from_string('byte')! == dataunits.byte
	assert dataunits.from_string('megabytes')! == dataunits.mb
	assert dataunits.from_string('megabyte')! == dataunits.mb
	assert dataunits.from_string('exbibit')! == dataunits.eibit
	assert dataunits.from_string('Mb')! == dataunits.mbit
	assert dataunits.from_string('MB')! == dataunits.mb
	assert dataunits.from_string('Mb', case_insensitive: true)! == dataunits.mb
	assert dataunits.from_string('Gibit')! == dataunits.gibit
	assert dataunits.from_string('gibit', case_insensitive: true)! == dataunits.gibit
	assert dataunits.from_string('gIBiT', case_insensitive: true)! == dataunits.gibit
	assert dataunits.from_string('Gib', case_insensitive: true)! == dataunits.gib
	assert dataunits.from_string('Gib')! == dataunits.gibit
	assert dataunits.from_string('k')! == dataunits.kb
	assert dataunits.from_string('kB')! == dataunits.kb
	assert dataunits.from_string('kb')! == dataunits.kbit
	assert dataunits.from_string('Ki')! == dataunits.kib
	assert dataunits.from_string('Gi')! == dataunits.gib
}

const units = [
	dataunits.bit,
	dataunits.nibble,
	dataunits.byte,
	dataunits.kb,
	dataunits.mb,
	dataunits.gb,
	dataunits.tb,
	dataunits.pb,
	dataunits.eb,
	dataunits.zb,
	dataunits.yb,
	dataunits.kib,
	dataunits.mib,
	dataunits.gib,
	dataunits.tib,
	dataunits.pib,
	dataunits.eib,
	dataunits.zib,
	dataunits.yib,
	dataunits.kbit,
	dataunits.mbit,
	dataunits.gbit,
	dataunits.tbit,
	dataunits.pbit,
	dataunits.ebit,
	dataunits.zbit,
	dataunits.ybit,
	dataunits.kibit,
	dataunits.mibit,
	dataunits.gibit,
	dataunits.tibit,
	dataunits.pibit,
	dataunits.eibit,
	dataunits.zibit,
	dataunits.yibit,
]

fn test_from_string_to_string() {
	for unit in units {
		assert dataunits.from_string(dataunits.to_string(unit)!)! == unit
	}
}
