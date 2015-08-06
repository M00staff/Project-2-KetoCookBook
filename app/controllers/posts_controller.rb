class PostsController < ApplicationController


  def index
     @posts = Post.all
  end

def show
  @current_user = User.find(session[:user]["id"])
  @post = Post.find(params[:id])

end

def destroy
    #authorize! :manage, @post
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

# def current_user
#   @current_user = User.find(session[:user]["id"])
# end

end
