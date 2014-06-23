class CommentsController < ApplicationController

  def create
   @image = Image.find(params[:image_id])
   @comment = Comment.new(comment_params)
   @comment.image = @image

   if @comment.save
   	redirect_to @image
   else
   	@comments = @image.reload.comments
   	render "images/show" #path to a template
   end
  end

 private

  def comment_params
  	params.require(:comment).permit(:body).
  	merge(user_id: current_user.id)
  end

end
