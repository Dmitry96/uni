class PagesController < ApplicationController
  def about
  end

  def contacts
  end
  
 def curriculum
    @courses = Course.find_each
  end
end
