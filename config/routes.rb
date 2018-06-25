Rails.application.routes.draw do
  
  get 'users/admin' => 'users#admin' 
  
  get 'users/delete/:id' => 'users#delete'
  
  get 'users/edit/:id' => 'users#edit'
  
  get 'users/update/:id' => 'users#update'
  
#####################################

  get 'users/signup' => 'users#signup'
  
  get 'users/register' => 'users#register'

  get 'users/login'
  
  get 'users/user_check'

  get 'users/logout'
  
  
  

######################################
  get '/' =>'post#index'
  
  get 'post/index' =>'post#index' 

  get 'post/new' =>'post#new'

  get 'post/show/:id'=>'post#show'
  
  get 'post/create' => 'post#create'
  
  get 'post/edit/:id' => 'post#edit'
  
  get 'post/update/:id' => 'post#update'
  get 'post/delete/:id' => 'post#delete'
end
