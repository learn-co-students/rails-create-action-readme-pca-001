Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  def create
    post = Post.new
    post.title = params[:title]
    post.description = params[:description]
    post.save
  end

end
