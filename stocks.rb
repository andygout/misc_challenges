def commst(stocks)
  newhash = {}; viewed = []
  stocks.reverse_each.map{|k| k}.each do |k, v|
    diff = stocks.reject{|k1,_| viewed.include? k1}.map {|a, b| [v, v - b, a, b]}.max
    newhash[k] = diff
    viewed << k
  end
  p newhash.max_by{|k, v| v}[1][2] => newhash.max_by{|k, v| v}[1][3], newhash.max_by{|k, v| v}[0] => newhash.max_by{|k, v| v}[1][0]
end

commst({:day1 => 3, :day2 => 5, :day3 => 9, :day4 => 8, :day5 => 6, :day6 => 5, :day7 => 2, :day8 => 1})