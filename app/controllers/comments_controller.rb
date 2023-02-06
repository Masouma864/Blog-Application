class CommentsController < ApplicationController
  def index;
  @comment = Comment.new
 end

  def show;
  @comment = Comment.new(post_id: params[:id], author: current_user, text: params[:text])
  redirect_to post_id_path(current_user.id, params[:id]) if @comment.save
 end
end
