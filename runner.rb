require_relative 'messify'
require 'csv'

# accepts a CSV of topics
# creates a nested array of topics
# [['cat'], ['puppies'], ['bunnies']]

topics = CSV.read("research_interests_raw.csv")
topics = topics.flatten

def generate_groups(total, size, topics)
  groups = []
  counter = 0
  while counter < total
    current = topics.sample(size)
    groups << current
    counter += 1
  end
  groups
end

p groups = generate_groups(50, 3, topics)

# join topics array into a string
# ['cAT', 'puppies  ', 'bunnies'] => 'cAT,puppies  ,bunnies '

# use Faker to randomly generate names
# push to results array

# write names interests to csv
# csv << name, interests