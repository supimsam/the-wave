class PostsController < ApplicationController
  before_action :authenticate_user!
  

  def index
    @posts = Post.all
    @users = User.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def like
    @post = Post.find(params[:id])
    @post.liked_by current_user
    redirect_to users_path(@post.user), notice: "You just liked it!"
  end


  def create
    @post = Post.new(post_params)


    if @post.save
      redirect_to root_path, notice: "New post created!"
    else
      flash[:notice] = @post.errors.full_messages
      render :new
    end

    
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to root_path, alert: "Post deleted." }
      format.js #{ render nothing: true }
  end
end
private

def post_params
  params.require(:post).permit(:title, :body, :image).merge(user: current_user)
end



def set_post
  @post = Post.find(params[:id])
end



end
