class PostsController < ApplicationController

  def index
     @posts = User.find(session[:user]["id"]).posts
  end

def show
  @post = Post.find(params[:id])
end

def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
end

def new
  @post = Post.new
end

def create
  @user = User.find(session[:user]["id"])
  @post = @user.posts.create!(post_params)
  redirect_to (post_path(@post))

end


private
def post_params
  params.require(:post).permit(:author, :post_body)
end



end
