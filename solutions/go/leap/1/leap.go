package leap

import "math"

const TestVersion = 1

func IsLeapYear(year int) bool {
	var f float64 = float64(year)
	if math.Mod(f, 4) == 0 {
		if math.Mod(f, 100) == 0 {
			if math.Mod(f, 400) == 0 {
				return true
			}
			return false
		}
		return true
	}
	return false
}