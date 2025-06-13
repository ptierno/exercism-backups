#/usr/bin/env ruby

class Hamming
  def self.compute(a,b)
    raise ArgumentError if a.length != b.length

    a,b = [a,b].map { |s| s.split('') }

    count = 0
    until a.empty?
      count += 1 if a.shift != b.shift
    end
    count
  end
end