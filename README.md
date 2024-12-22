## Data units converter

Example:

```v
import dataunits

fn main() {
	kilobytes := dataunits.convert(500, dataunits.mbit, dataunits.kb)
	println(kilobytes) // 62500.0

	mebibytes := (dataunits.gib * 15).mib()
	println(mebibytes) // 15360.0

	bytes := dataunits.DataSize(2000 * dataunits.gib).bytes()
	println(bytes) // 2.147483648e+12 == 2147483648000
}
```
