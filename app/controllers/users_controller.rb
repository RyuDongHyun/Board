class UsersController < ApplicationController
 # enable :session
  
  def admin
    @users=User.all
  end
  
  def delete
    user = User.find(params[:id])
    user.destroy
    
    redirect_to '/users/admin'
  end
  
  def edit
    @user = User.find(params[:id])
    
    redirect_to '/users/admin'
  end
  
  def update
    user=User.find(params[:id])
    user.update(
      name: params[:email],
      password: params[:password],
      nicname: params[:nicname]
      )
    
  end
  
  
  def signup
  end
  
  def register
    User.create(
      name: params[:email],
      password: params[:password],
      nicname: params[:nicname]
      )
  end

  def login
  end
  
  def user_check
    users=User.all
    
    users.each do |u|
      if u.name==params[:email] and u.password==params[:password]
        session[:current_user_id]=u.name
        redirect_to '/' and return
      end
    end
    redirect_to '/users/login'
  end

  def logout
    session.clear
    
    redirect_to '/'
  end
end
