Rails.application.routes.draw do
  root to: "pages#root"
  get 'index.html', to: 'pages#root'
  get 'no-sidebar.html', to: 'pages#no_sidebar'
  get 'left-sidebar.html', to: 'pages#left_sidebar'
  get 'right-sidebar.html', to: 'pages#right_sidebar'
end
