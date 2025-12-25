# Data Unit Converter

Installation:

```
v install https://github.com/gechandesu/dataunits
```

Example:

```v
import dataunits

fn main() {
	// convert via convert fn
	kilobytes := dataunits.convert(500, dataunits.mbit, dataunits.kb)
	println(kilobytes) // 62500.0

	// convert via DataSize method (the arguments order matters)
	mebibytes := (dataunits.gib * 15).mib()
	println(mebibytes) // 15360.0

	// convert via DataSize method with explicit type cast
	bytes := dataunits.DataSize(2000 * dataunits.gib).byte()
	println(bytes) // 2.147483648e+12 == 2147483648000
}
```
