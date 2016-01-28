Rails.application.routes.draw do
  root to: "pages#splash"

  ['home','about','blog','resume','portfolio','contact'].each do |choice|
    get choice, controller: "pages", action: choice
  end

end
