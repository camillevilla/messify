# ===== Methods for creating variants =====

# random capitalization
# 'cat' => 'cAT'
def rand_caps(str)
  capitals = rand(1..str.length - 1)
  counter = 0
  while counter < capitals
    strIndex = rand(str.length - 1)
    str[strIndex] = str[strIndex].capitalize
    counter += 1
  end
  str
end

# misspellings
# 'cat' => 'cate'
def misspell(str)
  letter = ('a'..'z').to_a.sample
  strIndex = rand(str.length - 1)
  str = str.insert(strIndex, letter)
end

# whitespace
# 'cat' => '   cat  '
def whitespacer(str)
  rand_num = rand(str.length..str.length + 10)
  str.ljust(rand_num).rjust(rand_num + rand(10))
end

# select randomly select variant method
def messify(str)
  num = rand(0..3)
  case num
    when 0
      return rand_caps(str)
    when 1
      return misspell(str)
    when 2
      return whitespacer(str)
    else
      return str
    end
end