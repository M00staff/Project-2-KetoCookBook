class CommentsController < ApplicationController

def new
  @post = Post.find(params[:post_id])
  @comment = Comment.new
end

def edit
  @comment = Comment.find(params[:id])
  @post = Post.find(params[:post_id])
  @current_user = User.find(session[:user]["id"])
end

def update
  @comment = Comment.find(params[:id])
  @post = Post.find(params[:post_id])
  @comment.update(comment_params.merge(post: @post))
  redirect_to (post_path(@post))
end

def create
  @post = Post.find(params[:post_id])
  @user = User.find(session[:user]["id"])
  @comment = @user.comments.create!(comment_params.merge(post: @post))
  redirect_to (post_path(@post))

end

def show
  @current_user = User.find(session[:user]["id"])
  @comment = Comment.all
end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to posts_path
end

private
def comment_params
  params.require(:comment).permit(:author, :comment_body, :user)
end



end
