//Solution goes in Sources
extension Array {
    func accumulate<T>(_ callback: (Element) -> T) -> [T] {
        var new: [T] = []
        for e in self {
            new.append(callback(e))
        }
        return new
    }
}
