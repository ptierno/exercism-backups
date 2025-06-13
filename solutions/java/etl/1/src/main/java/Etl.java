import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Etl {

	public Map<String, Integer> transform(Map<Integer, List<String>> old) {
		Map<String, Integer> expected = new HashMap<String, Integer>();

		for (Map.Entry<Integer, List<String>> entry : old.entrySet()) {
			for (String letter : entry.getValue()) {
				expected.put(letter.toLowerCase(), entry.getKey());
			}
		}
		return expected;
	}
}