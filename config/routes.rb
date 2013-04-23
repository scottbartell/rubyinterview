RubyInterview::Application.routes.draw do
  resources :questions

  root to: 'pages#quiz'
end
