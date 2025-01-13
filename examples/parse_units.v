import os
import regex
import dataunits

struct Memory {
	value f64
	unit  dataunits.DataSize
}

fn (m Memory) str() string {
	return '${m.value} ${dataunits.to_string(m.unit) or { '' }}'
}

fn (m Memory) mib() f64 {
	return dataunits.convert(m.value, m.unit, dataunits.mib)
}

fn Memory.from_string(s string) !Memory {
	mut re := regex.regex_opt(r'^(\d+)([a-zA-Z]+)$')!
	re.match_string(s)
	if re.groups.len < 2 {
		return error('unable to parse string ${s}')
	}
	value := re.get_group_by_id(s, 0).f64()
	unit := dataunits.from_string(re.get_group_by_id(s, 1))!
	return Memory{value, unit}
}

fn main() {
	mem := Memory.from_string(os.input('Enter memory value (e.g. 10Gi): ')) or {
		eprintln('Error: ${err}')
		exit(1)
	}
	println('Input: ${mem}')
	println('Memory size: ${mem.mib()} MiB')
}
