## Data units converter

Example:

```v
import dataunits

fn main() {
	kilobytes := dataunits.convert(500, dataunits.mbit, dataunits.kb)
	println(kilobytes) // 62500

	mebibytes := (dataunits.gib * 15).mib()
	println(mebibytes) // 15360

	bytes := dataunits.DataSize(2000 * dataunits.gib).bytes()
	println(bytes) // 4.294967296e+12 == 4294967296000
}
```
