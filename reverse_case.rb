# Имеется строка набранная в разном регистре, например: «ВотТакаяСтрока»
# требуется получить в результате строку где буквы меняют регистр, то есть:
# «вОТтАКАЯсТРОКА». Напишите, пожалуйста, код.


str = 'ВотТакаяСтрока'
p str.swapcase

# Сделаем вид что метода swapcase нет
def reverse_case str
  str.split('').map { |i| i == i.downcase ? i.upcase : i.downcase }.join
end


p reverse_case str