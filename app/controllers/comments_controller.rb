class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comments_params)
		redirect_to post_path(@post)
	end
	 def comments_params
       params.require(:comment).permit(:commenter, :body, :post)
   end
end
