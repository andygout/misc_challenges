stocks = Hash[{:day1 => 3, :day2 => 5, :day3 => 1, :day4 => 8, :day5 => 6, :day6 => 5, :day7 => 2, :day8 => 9}.reverse_each.map{|k| k}]

newhash = {}
stocks.each do |k, v|
  diff = stocks.map {|a, b| [v, v - b, a, b]}.max
  newhash[k] = diff
  stocks.shift
end
puts "Buy on #{newhash.max_by{|k, v| v}[1][2]} when the price is #{newhash.max_by{|k, v| v}[1][3]}."
puts "Sell on #{newhash.max_by{|k, v| v}[0]} when the price is #{newhash.max_by{|k, v| v}[1][0]}."