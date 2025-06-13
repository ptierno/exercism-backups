class ResistorColorDuo
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  def self.value(colors)
    # return the color codes of each color in the array argument concatenated into a single integer
    # while ignoring any colors provided other than the first two.
    colors[0, 2].map { |c| COLORS.find_index(c) }.map { |i| i.to_s }.join.to_i
  end
end
