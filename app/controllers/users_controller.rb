class UsersController < ApplicationController
  def new
  	@user=User.new
  end

  def create
  	@user=User.create(params[:user])
  	if(@user)
  		redirect_to user_path(@user)
  	else
  		render 'new'
  	end
  end

  def show
  	@user=User.find(params[:id])
  end

  def index
  	@users=User.all
  end

  def edit
  	@user=User.find(params[:id])
  end

  def update
  	@user=User.find(:id)
  	@user=User.Update_attributes(params[:user])
  	if(@user.save)
  		redirect_to user_path(@user)
  	else
  		render 'edit'
  	end
  end


  def destroy
  	@user=User.find(params[:id])
  	if(@user.destroy)
  		redirect_to '/home'
    else
    	redirect_to user_path(@user)
  	end
  end


end
