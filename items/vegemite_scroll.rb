class VegemiteScroll
  require_relative 'calculate_module'
  @list = [3, 5]
  @price = [6.99, 8.99]
  @code = 'VS5'
  def self.find(set_value)
    result = CalculateBox.calculate(set_value, @list)
    result_price = 0
    result.each { |i| result_price += @price[@list.index(i)] }
    puts "#{set_value} #{@code} $#{result_price.round(2)}"
    result.each do |i|
      puts "#{result.count(i)} x #{i} $#{@price[@list.index(i)]}"
      result.delete(i)
    end
  end
end
