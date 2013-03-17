Problemstosolve::Application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  

resources :users do
  resources :problems, except: [:show]
 end
 
 resources :problems, only: [:main, :show]
 
 match "/problems" => "problems#main"
  get "home/index"
  get "home/test"
  root :to => 'home#index'
  
end

# rake routes - updated - 10:47PM - 13/3/2012

# #new_user_session GET    /users/sign_in(.:format)                    devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                    devise/sessions#create
#     destroy_user_session GET    /users/sign_out(.:format)                   devise/sessions#destroy
#  user_omniauth_authorize        /users/auth/:provider(.:format)             omniauth_callbacks#passthru {:provider=>/twitter|facebook|google_oauth2/}
#   user_omniauth_callback        /users/auth/:action/callback(.:format)      omniauth_callbacks#(?-mix:twitter|facebook|google_oauth2)
#            user_password POST   /users/password(.:format)                   devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)               devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)              devise/passwords#edit
#                          PUT    /users/password(.:format)                   devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                     devise/registrations#cancel
#        user_registration POST   /users(.:format)                            devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                    devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                       devise/registrations#edit
#                          PUT    /users(.:format)                            devise/registrations#update
#                          DELETE /users(.:format)                            devise/registrations#destroy
#         new_user_problem GET    /users/:user_id/problems/new(.:format)      problems#new
#        edit_user_problem GET    /users/:user_id/problems/:id/edit(.:format) problems#edit
#             user_problem GET    /users/:user_id/problems/:id(.:format)      problems#show
#                    users GET    /users(.:format)                            users#index
#                          POST   /users(.:format)                            users#create
#                 new_user GET    /users/new(.:format)                        users#new
#                edit_user GET    /users/:id/edit(.:format)                   users#edit
#                     user GET    /users/:id(.:format)                        users#show
#                          PUT    /users/:id(.:format)                        users#update
#                          DELETE /users/:id(.:format)                        users#destroy
#                 problems        /problems(.:format)                         problems#index
#               home_index GET    /home/index(.:format)                       home#index
#                     root        /                                           home#index