import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * In this class we are going to do the Transform step of an
 * Extract-Transform-Load.
 * 
 * <p>
 * Extract-Transform-Load (ETL) is a fancy way of saying, "We have some crufty,
 * legacy data over in this system, and now we need it in this shiny new system
 * over here, so we're going to migrate this."
 * </p>
 * 
 * <p>
 * The old system stored a list of letters per score:
 * <ul>
 * <li>1 point: "A", "E", "I", "O", "U", "L", "N", "R", "S", "T"</li>
 * <li>2 points: "D", "G"</li>
 * <li>3 points: "B", "C", "M", "P"</li>
 * <li>4 points: "F", "H", "V", "W", "Y"</li>
 * <li>5 points: "K"</li>
 * <li>8 points: "J", "X"</li>
 * <li>10 points: "Q", "Z",</li>
 * </ul>
 * </p>
 * 
 * <p>
 * The shiny new scrabble system instead stores the score per letter, which
 * makes it much faster and easier to calculate the score for a word. It also
 * stores the letters in lower-case regardless of the case of the input letters:
 * <ul>
 * <li>"a" is worth 1 point</li>
 * <li>"b" is worth 3 points</li>
 * <li>"c" is worth 3 points</li>
 * <li>"d" is worth 2 points.</li>
 * <li>Etc</li>
 * </ul>
 * </p>
 * 
 * <p>
 * This class is part an exercise at
 * <a href="http://exercism.io/exercises/java/etl">exercism.io</a>
 * </p>
 * 
 * @author Peter Tierno
 *
 */
public class Etl {

    /**
     * Transforms a <tt>Map</tt> from our old system into a <tt>Map</tt> usable
     * by our new system.
     * 
     * @param old
     *            a map from our old system
     * @return a map usable by our new system
     */
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