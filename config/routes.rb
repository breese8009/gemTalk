Rails.application.routes.draw do
	
get '/', to: 'profiles#index', as: 'profiles'
end
