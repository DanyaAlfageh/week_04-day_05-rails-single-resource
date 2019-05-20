Rails.application.routes.draw do

  
  resources :authors do
    resources :books
  end

  resources :hospitals do
    resources :patients
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/books", to: "books#index", as: "books" #books_path
  # get "/books/new", to: "books#new", as: "new_book" #new_book_path
  # get "/books/:id", to: "books#show", as: "book" #book_path(book)
  # get '/books/:id/edit', to: "books#edit", as:"edit_book" #edit_book_path
  # delete '/books/:id', to: "books#destroy" #book_path(book)  I am usig same 'book' route so no need to use as:book again
  # post '/books', to:"books#create"
  # patch '/books/:id', to:"books#update"
  
  #get "/authors", to: "authors#index", as: "authors" #authors_path
  #get "/authors/new", to: "authors#new", as: "new_author" #new_author_path
  #get "/authors/:id", to: "authors#show", as: "author" #author_path(author)
  #get '/authors/:id/edit', to: "authors#edit", as:"edit_author" #edit_author_path
  #delete '/authors/:id', to: "authors#destroy" #author_path(author)  I am usig same 'author' route so no need to use as:author again
  #post '/authors', to:"authors#create"
  #patch '/authors/:id', to:"authors#update"

  # get "/patients", to: "patients#index", as: "patients" #patients_path
  # get "/patients/new", to: "patients#new", as: "new_patient" #new_patient_path
  # get "/patients/:id", to: "patients#show", as: "patient" #patient_path(patient)
  # get '/patients/:id/edit', to: "patients#edit", as:"edit_patient" #edit_patient_path
  # delete '/patients/:id', to: "patients#destroy" #patient_path(patient)  I am usig same 'patient' route so no need to use as:patient again
  # post '/patients', to:"patients#create"
  # patch '/patients/:id', to:"patients#update"

  root 'welcome#index'

end
