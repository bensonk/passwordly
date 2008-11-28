class Word < ActiveRecord::Base
  def self.random
    # This works great for small data sets, but for our word list, it's way too slow. 
    # find :first, :order => "rand()"

    # This will only work with densely packed IDs.  I'll have to come up with something
    # better in the future.  For a quick hack it'll probably work.  I'm sure there's a 
    # good rails idiom for grabbing a random activerecord item, but I don't have the 
    # internets ATM. 
    find rand(234936)
  end
end
