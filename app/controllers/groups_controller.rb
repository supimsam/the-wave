class GroupsController < ApplicationController
  
  def index
    @groups = Group.all
    @users = User.all
  end

  def create
  @group = Group.new(params.require(:group).permit(:name, :description))
  @group.users << current_user
    if @group.save
      
      redirect_to groups_path , notice: "New group created!"
    else

  end
end

  def new
    @group = Group.new
  end

  def show
    @users = User.all
    @group = Group.find(params[:id])
    
  end

  def update
    @group = Group.find(params[:id])
    @group.users << @current_user
  end

  def edit
  end
end

