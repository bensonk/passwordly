class PasswordController < ApplicationController
  def generate
    @password = crap_out_password(params[:level])
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  private
  
  #incredibly ugly fake password generation for testing
  def crap_out_password(security_level)
    if security_level == "low"
      return "foo"
    elsif security_level == "medium"
      return "f00"
    elsif security_level == "high"
      return "f00b##"
    else
      return "crap none of that worked"
    end
  end
end