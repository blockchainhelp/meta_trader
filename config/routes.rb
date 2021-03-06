MetaTrader::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users, :controllers => { :sessions => "users/sessions" }

  get "main_page", :to => "api_access#main_page", :as => "main_page"

  post "ping_session", :to => "api_access#ping_session", :as => "ping_session"

  post "tabs/common/submit", :to => "fixed_update#common_submit", :as => "common_submit"

  post "tabs/time/submit", :to => "fixed_update#time_submit", :as => "time_submit"

  post "tabs/backup/submit", :to => "fixed_update#backup_submit", :as => "backup_submit"

  post "tabs/symbol_group/submit", :to => "symbol#symbol_group_submit", :as => "symbol_group_submit"

  get "fetch_symbol", :to => "symbol#fetch_symbol", :as => "fetch_symbol"
  post "tabs/symbol/submit", :to => "symbol#symbol_submit", :as => "symbol_submit"
  get "new_symbol", :to => "symbol#new_symbol", :as => "new_symbol"

  get "fetch_group", :to => "group#fetch_group", :as => "fetch_group"
  post "tabs/group/submit", :to => "group#group_submit", :as => "group_submit"

  get "fetch_manager", :to => "manager#fetch_manager", :as => "fetch_manager"
  post "tabs/manager/submit", :to => "manager#manager_submit", :as => "manager_submit"

  get "fetch_feeder", :to => "feeder#fetch_feeder", :as => "fetch_feeder"
  post "tabs/feeder/submit", :to => "feeder#feeder_submit", :as => "feeder_submit"

  get "fetch_synchronization", :to => "synchronization#fetch_synchronization", :as => "fetch_synchronization"
  post "tabs/synchronization/submit", :to => "synchronization#synchronization_submit", :as => "synchronization_submit"

  get "fetch_plugin", :to => "plugin#fetch_plugin", :as => "fetch_plugin"
  post "tabs/plugin/submit", :to => "plugin#plugin_submit", :as => "plugin_submit"

  post "filter_account", :to => "account#filter_account", :as => "filter_account"
  get "fetch_account", :to => "account#fetch_account", :as => "fetch_account"
  post "tabs/account/submit", :to => "account#account_submit", :as => "account_submit"

  get "fetch_order", :to => "order#fetch_order", :as => "fetch_order"
  post "tabs/order/submit", :to => "order#order_submit", :as => "order_submit"

  post "tabs/access/submit", :to => "variable_update#access_submit", :as => "access_submit"
  delete "tabs/access/:position", :to => "variable_update#access_delete", :as => "delete_access_row"

  post "tabs/holiday/submit", :to => "variable_update#holiday_submit", :as => "holiday_submit"
  delete "tabs/holiday/:position", :to => "variable_update#holiday_delete", :as => "delete_holiday_row"

  post "tabs/data_server/submit", :to => "variable_update#data_server_submit", :as => "data_server_submit"
  delete "tabs/data_server/:position", :to => "variable_update#data_server_delete", :as => "delete_data_server_row"

  root :to => "api_access#main_page"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
