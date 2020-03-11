class Api::UsersController < ApplicationController
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      render json: { message: "User Created!" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @user = User.find(params[:id])

    @user.name = params[:name] || @user.name

    @user.save
    render 'show.json.jb'
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "User Deleted!"}
  end
end
