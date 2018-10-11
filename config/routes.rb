Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/one_contact' => 'contacts#show_contact'
    get '/all_contacts' => 'contacts#every_contact'
  end
end
