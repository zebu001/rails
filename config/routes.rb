Rails.application.routes.draw do
  resources :qualidades
  resources :depoimentos
  resources :animes
  root "animes#index"
end
