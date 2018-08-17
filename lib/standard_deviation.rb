ages = [24, 30, 18, 20, 41]

def standard_deviation(ages)
  sum1 = ages.sum.to_f
  length = ages.length
  mean = sum1 / length
  sub_int = []
  ages.each do |age|
    sub_int << (age - mean)
  end
  sqre = []
  sub_int.each do |sub|
    sqre << (sub * sub)
  end
  sum2 = sqre.sum
  num = sum2 / length
  stan_dev = Math.sqrt(num).round(2)
end
