class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def stuff
  end
 
end
