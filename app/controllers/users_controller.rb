class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:edit, :update, :destroy, :close, :password]



  def profile
    
    @user = current_user
    @theuser = User.find(params[:id])
    @post = Post.new
    @posts = @theuser.posts.all
  end

  def close
  end

  def password
  	@user = current_user
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = current_user
  end

  def show
    @user = User.find_by_username(params[:username])
    @post = @user.posts.all

    
  end

  def home
  end


  

  
  end

 

	
