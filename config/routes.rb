Mylinks::Application.routes.draw do
  
  controller :sessions do
    get  "/",  :action => :new,     :as => :login
    post "/",  :action => :create,  :as => false
    get  "/logout", :action => :destroy, :as => :logout
  end

  controller :dashboard do
    get "/mylinks", :action => :index, :as => :dashboard
  end

end
