class PostsController < ApplicationController

# I was curious as to why you didn't include edit/update functionality for the
# posts. Other than that posts controller looks great, little bit of indentation issues
  def index
     @posts = Post.all
  end

def show
  @current_user = User.find(session[:user]["id"])
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
  params.require(:post).permit(:title, :post_body, :photo_url)
end

end
