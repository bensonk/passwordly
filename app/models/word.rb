class Word < ActiveRecord::Base
  def self.random
    find :first, :order => "random()"
  end
end
