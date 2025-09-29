class UsersController < ApplicationController
  def show
    @user = Users.find(params[:id])
    @post_image = @user.post_images
  end

  def edit
  end
end

