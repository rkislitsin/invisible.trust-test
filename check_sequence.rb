# Дана строка ​s​ и словарь ​dict,​ содержащий некие слова. Определите, можно ли
# строку ​s​ сегментировать в последовательность разделенных пробелом слов,
# содержащихся в словаре ​dict​.

# Пример: дано, ​s​ = «двадесятка», ​dict​ = [«два», «десятка», «девятка»]. Программа
# должна вернуть ​true​, потому что «двадесятка» могут быть сегментированы как «два
# десятка».
s​tr   = "двадесятка"
​dict​ = ["два", "десятка", "девятка"]

def can_segment_string(str, dict)
  (1..str.length).each do |i|
    first = str[0, i]
    next if !dict.include?(first)

    second = str[i..-1]
    return true if second.empty? || dict.include?(second) || can_segment_string(second, dict)
  end
  false
end

p can_segment_string(s​tr, ​dict​)