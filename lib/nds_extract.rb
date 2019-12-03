require 'directors_database'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  name_index = 0
  while name_index < nds.length do
    director_name = nds[name_index]
    result[director_name[:name]] = gross_for_director(director_name)
    name_index += 1
    puts "\t#{[director_name[:name]]} total: $#{result[director_name[:name]]}"
    #puts result[director_name[:name]]
  end
 # puts result
 #pp nds
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    movie_index = 0
    result_here = 0
    while movie_index < director_data[:movies].length do
      result_here += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
   return result_here
end
