class PostsController < ApplicationController
  def index
    @posts = Post.order(id: :asc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post
  end
  def show

  @post = Post.find(params[:id])
end
  def destroy
    post = Post.find(params[:id])
    post.destroy!
    
  end


  def adit
  end
  def post_params
    params.require(:post).permit(:title, :content)
  end


end
