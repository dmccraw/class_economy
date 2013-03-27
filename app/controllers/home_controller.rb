class HomeController < ApplicationController
  def index
    if current_user.admin?
      @groups = Group.all
      render "admin"
    elsif current_user.teacher?
      if current_user.groups.count == 1
        redirect_to current_user.groups.first
      else
        render "teacher"
      end
    elsif current_user.student?
      render "student"
    end
  end

  def stuff
  end

  def switch_user
    if current_user.id <= 4 && params[:user_id].present?
      if user = User.find_by_id(params[:user_id])
        sign_in user
        respond_to do |format|
          format.js { render text: "location.reload(true);"}
        end
      end
    end
  end
end
