//Solution goes in Sources
class DNA {
    private var nucleotides: [String: Int] = ["A": 0, "C": 0, "G": 0, "T": 0]
    
    init?(strand: String) {
        for c in strand.uppercased() {
            let nucleotide = String(c)
            if !Array(nucleotides.keys).contains(nucleotide) {
                return nil
            }
            nucleotides[nucleotide]! += 1
        }
    }
    
    func count(_ nucleotide: String) -> Int {
        return nucleotides[nucleotide]!
    }
    
    func counts() -> [String: Int] {
        return nucleotides
    }
}
