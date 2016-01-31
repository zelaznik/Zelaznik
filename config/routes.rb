Rails.application.routes.draw do
  resources :skills
  resources :blog_posts
  root to: "pages#splash"

  ['orig','home','about','blog','resume','portfolio','contact'].each do |choice|
    get choice, controller: "pages", action: choice
  end

  get 'next_splash', controller: "pages", action: 'splash'
end
