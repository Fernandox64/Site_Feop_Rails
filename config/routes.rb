Rails.application.routes.draw do 

  devise_for :users
  resources :products
  resources :editals
  resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end  
    resources :comments
  end

  resources :galleries do
    member do
      get "like", to: "galleries#upvote"
      get "dislike", to: "galleries#downvote"
    end  
    resources :comentarios
  end
  
  #troca
  #root 'pages#home'
  root 'posts#index'

  # get 'editais' => "pages#home", as: :home
  #troca
  
  get 'home' => "posts#index", as: :home
  
  #get 'home' => "pages#home", as: :home

  get 'portal_de_compras' => "pages#portal_de_compras", as: :portal_de_compras

  get 'servicos' => "pages#servicos", as: :servicos

  get 'projetos' => "pages#projetos", as: :projetos

  get 'novidades' => "pages#novidades", as: :novidades

  get 'fale_conosco' => "pages#fale_conosco", as: :fale_conosco
  
  get 'galeria_de_projetos' => "galleries#index", as: :galeria_de_projetos
  

  get 'acesso_do_pesquisador' => "pages#acesso_do_pesquisador", as: :acesso_do_pesquisador

  get 'fundacao' => "pages#fundacao", as: :fundacao

  get 'eventos' => "pages#eventos", as: :eventos

  #get 'eventos' => "http://conveniar.feop.com.br:8081/eventos/", as: :eventos

  get 'portal_de_transparencia' => "pages#portal_de_transparencia", as: :portal_de_transparencia

  get 'publicacoes' => "pages#publicacoes", as: :publicacoes

  get 'setores' => "pages#setores", as: :setores

  get 'conveniar' => "pages#conveniar", as: :conveniar

  get 'juridico' => "pages#juridico", as: :juridico

  get 'editais' => "editals#index", as: :editais



  get 'login' => "pages#login", as: :login

  get 'imprensa' => "pages#imprensa", as: :imprensa

  get 'financiar' => "pages#financiar", as: :financiar

  get 'faq' => "pages#faq", as: :faq

  get 'mapa_do_site' => "pages#mapa_do_site", as: :mapa_do_site

  get 'parceiros' => "pages#parceiros", as: :parceiros

  get 'sobre' => "pages#sobre", as: :sobre

  get 'oportunidades' => "pages#oportunidades", as: :oportunidades
  
  #######

  get 'apoio' => "pages#apoio", as: :apoio
  get 'missao' => "pages#missao", as: :missao
  get 'presidente' => "pages#presidente", as: :presidente
  get 'estatuto' => "pages#estatuto", as: :estatuto
  get 'conselhos' => "pages#conselhos", as: :conselhos
  get 'emails_ramais' => "pages#emails_ramais", as: :emails_ramais
  

  get 'nucleo_Ti' => "pages#nucleo_Ti", as: :nucleo_Ti

  get 'suprimentos' => "pages#suprimentos", as: :suprimentos

  get 'contas' => "pages#contas", as: :contas

  get 'financeiro' => "pages#financeiro", as: :financeiro

  get 'rh' => "pages#rh", as: :rh

  get 'infraestrutura' => "pages#infraestrutura", as: :infraestrutura

  get 'acessoria' => "pages#acessoria", as: :acessoria



  #get 'pages/apoio'

  #get 'pages/missao'

  #get 'pages/presidente'

  #get 'pages/estatuto'

  #get 'pages/conselhos'

  #get 'pages/emails_ramais'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
