require_relative 'items/vegemite_scroll'
require_relative 'items/blueberry_muffin'
require_relative 'items/croissant'
require_relative 'items/check_string'
puts 'Enter Count of Vegemite Scroll(VS5)'
vs5 = gets.chomp
puts 'Enter Count of Blueberry Muffin(MB11)'
mb11 = gets.chomp
puts 'Enter Count of Croissant(CF)'
cf = gets.chomp
if Check.check_string(vs5) && Check.check_string(mb11) && Check.check_string(cf)
  VegemiteScroll.find(vs5.to_i)
  BlueberryMuffin.find(mb11.to_i)
  Croissant.find(cf.to_i)
else
  puts 'Wrong input types'
end
