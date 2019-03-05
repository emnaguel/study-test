class BugsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @bugs = Bug.severity_ordered

  end


  def new
    @bug = Bug.new
    @users = User.all
  end

  def create
    @bug = Bug.new(bug_params)
    @bug.owner = current_user
    @bug.owner_bug = @bug.owner.username
    @bug.save
    redirect_to root_path
  end

  def edit
    @bug = Bug.find(params[:id])
    @users = User.all
  end

  def update
     @users = User.all
    @bug = Bug.find(params[:id])
    @bug.update(bug_params)
    redirect_to root_path
  end

 private

    def bug_params
      # *Strong params*: You need to *whitelist* what can be updated by the user
      # Never trust user data!
      params.require(:bug).permit(:title, :description, :state, :user_id, :owner_bug, :severity)
    end


end
