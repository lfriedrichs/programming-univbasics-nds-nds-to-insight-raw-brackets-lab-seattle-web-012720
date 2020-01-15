$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  index = 0
  while nds[index]
    total = 0 
    count = 0
    while nds[index][:movies][count]
      total += nds[index][:movies][count][:worldwide_gross]
      count += 1
    end
    result[nds[index][:name]] = total
    index += 1
  end
  result
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end
