class PasswordController < ApplicationController
  def generate
    @password = create_pass(params[:level])
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  private
  def create_pass(level)
    if(level == 1)
      return random_simple_password
    else
      return random_medium_password
    end
  end

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
