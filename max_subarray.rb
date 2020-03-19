# Найдите непрерывный подмассив в массиве (содержащем как минимум 1 элемент),
# который имеет максимальную сумму элементов.

# Пример: [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4] должно вернуть [4, -1, 2, 1].

def max_subarray arr
  max_sum = 0
  result  = []

  (1...arr.size).each do |i|
    (i...arr.size).each do |j|
      sub = arr[i..j]
      sum = sub.inject(:+)
      next if sum < max_sum
      next if sum == max_sum
      max_sum, result = sum, sub
    end
  end
  result
end

arr = [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4]
p max_subarray arr