Rails.application.routes.draw do
  resources :skills
  resources :blog_posts
  root to: "pages#splash"

  ['home','about','blog','resume','portfolio','contact'].each do |choice|
    get choice, controller: "pages", action: choice
  end

  post 'contact', controller: 'pages', action: 'info'
  get 'next_splash', controller: "pages", action: 'splash'
end
