class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    if params[:user].blank?
      render json: { error: 'Missing user parameter' }, status: :unprocessable_entity
      return
    end

    user = User.new(user_params)

    if user.save
      render json: user, status: :created
    else
      puts user.errors.inspect # Add this line for debugging
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    users = User.all
    render json: users
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :first_name, :last_name)
  end
end
