Rails.application.routes.draw do
  resources :skills
  resources :blog_posts
  root to: "pages#splash"

  ['home','about','blog','resume','portfolio','contact'].each do |choice|
    get choice, controller: "pages", action: choice
  end

  get 'next_splash', controller: "pages", action: 'splash'

  get 'original.html', controller: "original_pages", action: "index"
  get 'original/index.html', controller: "original_pages", action: "index"
  get 'original/no-sidebar.html', controller: "original_pages", action: "no_sidebar"
  get 'original/left-sidebar.html', controller: "original_pages", action: "left_sidebar"
  get 'original/right-sidebar.html', controller: "original_pages", action: "right_sidebar"
end
