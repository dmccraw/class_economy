class HomeController < ApplicationController
  def index
    if current_user.admin?
      render "admin"
    elsif current_user.teacher?
      if current_user.groups.count == 1
        redirect_to
      else
        render "teacher"
      end
    elsif current_user.student?
      render "student"
    end
  end

  def stuff
  end
end
