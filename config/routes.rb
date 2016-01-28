Rails.application.routes.draw do
  root to: "pages#welcome"
  ['home','about','blog','resume','portfolio','contact'].each do |choice|
    get choice, controller: "pages", action: choice
  end
end
