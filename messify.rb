# accepts a CSV of topics
# creates a nested array of topics
# [['cat'], ['puppies'], ['bunnies']]

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

# mispellings
# 'cat' => 'cate'

# whitespace
# 'cat' => '   cat  '
