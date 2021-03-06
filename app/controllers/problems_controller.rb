class ProblemsController < ApplicationController
  before_filter :authenticate_user!

  # No rocket science in the below methods.

  def new
    @problem = Problem.new
    @user = User.find(params[:user_id])
    @categories = ["Telecommunications","Manufacturing","Analytics and BI","Automotive","Real Estate","Healthcare","Retail and eCommerce","Enterprise & Productivity","Media / Digital","Entertainment","Travel","Education","Social","Consumer Web","Finance","Utilities"]
  end

  def edit
  end

  def index
    @user = User.find(params[:user_id])
    @problems = @user.problems
  end

  def show
    @problem = Problem.find(params[:id])
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
        format.json { render json: user_problems_path, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: user_problems_path.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @problem = @user.problems.find(params[:id])
  end


  def update
    @problem = Problem.find(params[:id])
    respond_to do |format|
      if @problem.update_attributes(params[:problem])
        format.html { redirect_to user_problems_path, notice: 'Problem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @problem.errors, status: :unprocessable_entity }
      end
    end
  end



end
