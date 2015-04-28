def buysell(stocks)
  maxdiffprices = []; maxdiff = 0
  stocks.each_with_index do |v1, i1|
    stocks.each_with_index do |v2, i2|
      if i1 < i2 && (v2 - v1) > maxdiff
        maxdiffprices = [i1, i2]
        maxdiff = v2 - v1
      end
    end
  end
  p "buy_day" => maxdiffprices[0], "sell_day" => maxdiffprices[1]
end

buysell([10,2,5,8,9,1,6,7,8,10]) # => {"buy_day"=>5, "sell_day"=>9}

# https://github.com/MA-Codejam/round-two-feb-20

# Your objective is to write a method that will work out the best days to buy and sell a stock. For example, take an array of stock prices:

# stockprice = [10,2,5,8,9,1,6,7,8,10]

# Indices reprepresent days. So on Day 0, the price of the stock was 10. On Day 1, 2. On Day 2, 5. And so on. Your task is to work out which buy day/sell day produces the biggest return. In this instance, buying on Day 5 and selling on Day 9 yields a profit of 9 (10 - 1). This is the most profitable combination.

# Your method should return the buy day and sell day in a hash. In this instance:

# method_name(stock_price) #=> { buy_day: 5, sell_day: 9 }

# Good luck! -Ptolemy

# p.s no shorting.