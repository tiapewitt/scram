class UserController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.all

      @submission = Submission.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @submission }
      end
    end
  end
