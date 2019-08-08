class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @posts  = current_user.microposts.build
    end
  end
end
