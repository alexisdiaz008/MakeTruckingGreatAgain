Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#landing_page"
  get "/landing_page" => "pages#landing_page", as: :landing_page
end
