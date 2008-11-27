class Word < ActiveRecord::Base
  def self.random
    find :first, :order => "rand()"
  end
end
