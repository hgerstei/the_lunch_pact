Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "states#index"
  # Routes for the Recipe resource:
  # CREATE
  get "/recipes/new", :controller => "recipes", :action => "new"
  post "/create_recipe", :controller => "recipes", :action => "create"

  # READ
  get "/recipes", :controller => "recipes", :action => "index"
  get "/recipes/:id", :controller => "recipes", :action => "show"

  # UPDATE
  get "/recipes/:id/edit", :controller => "recipes", :action => "edit"
  post "/update_recipe/:id", :controller => "recipes", :action => "update"

  # DELETE
  get "/delete_recipe/:id", :controller => "recipes", :action => "destroy"
  #------------------------------

  # Routes for the Recommendation resource:
  # CREATE
  get "/recommendations/new", :controller => "recommendations", :action => "new"
  post "/create_recommendation", :controller => "recommendations", :action => "create"

  # READ
  get "/recommendations", :controller => "recommendations", :action => "index"
  get "/recommendations/:id", :controller => "recommendations", :action => "show"

  # UPDATE
  get "/recommendations/:id/edit", :controller => "recommendations", :action => "edit"
  post "/update_recommendation/:id", :controller => "recommendations", :action => "update"

  # DELETE
  get "/delete_recommendation/:id", :controller => "recommendations", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the State resource:
  # CREATE
  get "/states/new", :controller => "states", :action => "new"
  post "/create_state", :controller => "states", :action => "create"

  # READ
  get "/states", :controller => "states", :action => "index"
  get "/states/:id", :controller => "states", :action => "show"

  # UPDATE
  get "/states/:id/edit", :controller => "states", :action => "edit"
  post "/update_state/:id", :controller => "states", :action => "update"

  # DELETE
  get "/delete_state/:id", :controller => "states", :action => "destroy"
  #------------------------------

  # Routes for the Purchase resource:
  # CREATE
  get "/purchases/new", :controller => "purchases", :action => "new"
  post "/create_purchase", :controller => "purchases", :action => "create"

  # READ
  get "/purchases", :controller => "purchases", :action => "index"
  get "/purchases/:id", :controller => "purchases", :action => "show"

  # UPDATE
  get "/purchases/:id/edit", :controller => "purchases", :action => "edit"
  post "/update_purchase/:id", :controller => "purchases", :action => "update"

  # DELETE
  get "/delete_purchase/:id", :controller => "purchases", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
