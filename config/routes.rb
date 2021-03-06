Spree::Core::Engine.routes.draw do
  resources :gift_cards, only: [:new, :create] do
    member do
      get :redeem
    end
  end

  resources :orders, only: [] do
    patch :apply_gift_card
  end

  namespace :admin do
    resources :gift_cards
  end
end
