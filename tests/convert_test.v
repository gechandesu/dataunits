import dataunits

fn test_convert() {
	assert (dataunits.nibble * 4).bytes() == 2
	assert (dataunits.bit * 8).bits() == 8
	assert (dataunits.bit * 8).bytes() == 1
	assert (dataunits.gib * 10).mib() == 10240
	assert (dataunits.gib * 5000).bytes() == i64(5368709120000)
	assert (dataunits.mbit * 500).kb() == 62500
	assert dataunits.convert(500, dataunits.mbit, dataunits.kb) == 62500
	assert dataunits.DataSize(4000 * dataunits.gib).bytes() == f64(4294967296000)
}
