# Дан треугольник. Найдите минимальный путь от вершины до основания. На каждом
# шаге вы можете двигаться только на соседние цифры, находящиеся в ряду ниже.

# Пример:
# [
# [2​​],
# [​3​,4],
# [6,​5​,7],
# [4,​1​,8,3]
# ]
# Здесь длина минимального пути от вершины до основания равна 11 (т.к 2+3+5+1 = 11).

def triangle_min_path(triangle)
  result       = Array.new(triangle.length) { [] }
  result[0][0] = triangle[0][0]

  row = 1
  while row < triangle.length

    element = 0
    while element < triangle[row].length
      if element.zero?
        result[row][element] = result[row - 1][element] + triangle[row][element]
      elsif element == triangle[row].length - 1
        result[row][element] = result[row - 1][element - 1] + triangle[row][element]
      else
        # Если элемент не первый и не последний в строке, ищем для него минимального родителя
        result[row][element] = [result[row - 1][element - 1], result[row - 1][element]].min + triangle[row][element]
      end
      element += 1
    end
    row += 1
  end
  result[-1].min
end

triangle = [[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]]

p triangle_min_path triangle