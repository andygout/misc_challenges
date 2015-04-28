def buysell(stocks)
  newhash = {}; viewed = []
  stocks.each do |k, v|
    diff = stocks.reject{|k1,_| viewed.include? k1}.map {|a, b| [v, b - v, a, b]}.max
    newhash[k] = diff
    viewed << k
  end
  p newhash.max_by{|k, v| v[1]}[0] => newhash.max_by{|k, v| v[1]}[1][0], newhash.max_by{|k, v| v[1]}[1][2] => newhash.max_by{|k, v| v[1]}[1][3]
end

buysell({:day1 => 3, :day2 => 5, :day3 => 1, :day4 => 8, :day5 => 6, :day6 => 5, :day7 => 2, :day8 => 9}) # => {:day3=>1, :day8=>9}

# If stock is on a constant downward trend then only one day will display (i.e. buy and sell on same day while stock remains at same price) as it impossible to make a profit in such circumstances.