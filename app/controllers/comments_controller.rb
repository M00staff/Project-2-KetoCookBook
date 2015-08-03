class CommentsController < ApplicationController

def new
  @post = Post.find(params[:post_id])
  @comment = Comment.new
end

def create
  @post = Post.find(params[:post_id])
  @comment = Comment.create!(post_params.merge(post: @post))
  redirect_to posts_path(@post)
end

def show
  @comment = Comment.all
end


private
def post_params
  params.require(:comment).permit(:author, :comment_body)
end



end
