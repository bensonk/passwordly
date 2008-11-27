class GeneratorController < ApplicationController
  def index
    @simple = random_simple_password()
    @medium = random_medium_password()
  end

  private
  def random_punct
    [ ".", "!", "?", "%", "+", "-" ].sort_by{rand}[0]
  end

  def random_num
    rand(10).to_s
  end

  def random_simple_password
    random_num + Word.random.value + random_punct
  end

  def random_medium_password
    elite(Word.random.value) + random_punct
  end

  def elite(word)
    word.sub!("a", "4")
    word.sub!("e", "3")
    word.sub!("i", "1")
    word.sub!("o", "0")
    word.sub!("t", "7")
    return word
  end
end
