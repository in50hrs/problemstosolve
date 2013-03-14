class ProblemsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @problem = Problem.new
    @user = User.find(params[:user_id])
  end

  def edit
  end

  def index
    @user = User.find(params[:user_id])
    @problems = @user.problems
  end

  def show
    @user = User.find(params[:user_id])
    @problem = @user.problems.find(params[:id])
  end

  def main
    @problems = Problem.all
  end

  def create
    @user = User.find(params[:user_id])
    @problem = @user.problems.build(params[:problem])
    respond_to do |format|
      if @problem.save
        format.html { redirect_to user_problems_path(@user), notice: 'Problem was successfully created.' }
        format.json { render json: user_posts_path, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: user_posts_path.errors, status: :unprocessable_entity }
      end
    end
  end


end
