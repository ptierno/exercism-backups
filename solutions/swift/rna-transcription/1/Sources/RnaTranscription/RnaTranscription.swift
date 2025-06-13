//Solution goes in Sources
class RnaTranscription {
    enum TranscriptionError: Error {
        case invalidNucleotide(message: String)
    }
}

class Nucleotide {
    var strand: String
    let compliments: [String: String] = ["G": "C", "C": "G", "T": "A", "A": "U"]
    
    init(_ strand: String) {
        self.strand = strand
    }
    
    func complementOfDNA() throws -> String {
        var rnaComplement = ""
        for c in strand {
            if let nucleotide = compliments[String(c)] {
                rnaComplement += nucleotide
            } else {
                throw RnaTranscription.TranscriptionError.invalidNucleotide(message: "\(c) is not a valid Nucleotide")
            }
        }
        return rnaComplement
    }
}
