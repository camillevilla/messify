require_relative 'messify'
require 'csv'

# accepts a CSV of topics
# creates a nested array of topics
# [['cat'], ['puppies'], ['bunnies']]

topics = CSV.read("research_interests_raw.csv")
p topics
p topics[0]

# create variants of each topic 
  # => [['cAT'], ['puppies   '], ['buNNiesz']]
topics.map! do |topic|
  topic[0] = [messify(topic[0])]
end

p topics

# randomly select several unique topics for groups
# OK: ['cAT', 'puppies  ', 'bunnies']
# NOT ok: ['cat', 'cAT', 'puppies']

# def generate_groups(num, topics)
#   groups = []
#   counter = 0
#   while counter < num

#     counter += 1
#   end
# end

# join topics array into a string
# ['cAT', 'puppies  ', 'bunnies'] => 'cAT,puppies  ,bunnies '

# use Faker to randomly generate names
# push to results array

# write names interests to csv
# csv << name, interests