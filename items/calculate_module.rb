module CalculateBox
  def self.calculate(value, list)
    return nil if value < 0
    return nil if value != value.floor
    parents = Array.new(value + 1)
    parents[0] = 0
    worklist = [[0, 0]]
    while parents[value].nil? && !worklist.empty? do
      base, starting_index = worklist.shift
      starting_index.upto(list.size - 1) do |index|
        box = list[index]
        tot = base + box
        if tot <= value && parents[tot].nil?
          parents[tot] = base
          worklist << [tot, index]
        end
      end
    end

    return nil if parents[value].nil?
    result = []
    while value > 0 do
      parent = parents[value]
      result << value - parent
      value = parent
    end
    result.sort!.reverse!
  end
end