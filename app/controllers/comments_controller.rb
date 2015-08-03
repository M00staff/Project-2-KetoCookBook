class CommentsController < ApplicationController

def new
  @post = Post.find(params[:post_id])
  @comment = Comment.new
end

def create
  @post = Post.find(params[:post_id])
  @comment = Comment.create!(comment_params.merge(post: @post))
  redirect_to posts_path(@post)
end

def show
  @comment = Comment.all
end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to posts_path
end

private
def comment_params
  params.require(:comment).permit(:author, :comment_body)
end



end
