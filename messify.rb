require 'csv'

# accepts a CSV of topics
# creates a nested array of topics
# [['cat'], ['puppies'], ['bunnies']]

data = CSV.read("research_interests_raw.csv")

# create variants of each topic 
  # =>
  # [['cat', 'cAT', '    cat'], 
  # ['puppies', 'pUPPies', 'puppies   '],
  # ['bunnies', 'buNNies', '  bunnies  ']]

# randomly select several unique topics for groups
# OK: ['cAT', 'puppies  ', 'bunnies']
# NOT ok: ['cat', 'cAT', 'puppies']

# join topics array into a string
# ['cAT', 'puppies  ', 'bunnies'] => 'cAT,puppies  ,bunnies '

# use Faker to randomly generate names
# push to results array

# write names interests to csv
# csv << name, interests

# ===== VARIANTS =====

# random capitalization
# 'cat' => 'cAT'
def rand_caps(str)
  capitals = rand(1..str.length - 1)
  counter = 0
  while counter < capitals
    p strIndex = rand(str.length - 1)
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
  str.ljust(rand(str.length..10)).rjust(rand(str.length..10))
end

# ===== SANDBOX =====
# p rand_caps(data[0][0])
# p misspell(data[0][0])
p whitespacer(data[0][0])
# p data