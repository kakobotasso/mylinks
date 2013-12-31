Mylinks::Application.routes.draw do
  
  controller :sessions do
    get  "/",  :action => :new,     :as => :login
    post "/",  :action => :create,  :as => false
    get  "/logout", :action => :destroy, :as => :logout
  end

  controller :dashboard do
    get "/my-links", :action => :index, :as => :dashboard
  end

  controller :link do
  	get     "/new-link",            :action => :new,      :as => :links
  	post    "/new-link",            :action => :create
    get     "/new-link/:id/edit",   :action => :edit,     :as => :edit_link
    put     "/new-link/:id",        :action => :update
    delete  "/new-link/:id",        :action => :destroy
  end

  controller :category do
    get "/new-category", :action => :new, :as => :categories
    post "/new-category", :action => :create
  end

end
