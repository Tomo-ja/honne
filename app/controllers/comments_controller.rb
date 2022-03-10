class CommentsController < ApplicationController
	def create
		@comment = current_user.comments.build(comment_params)
		@post = Micropost.find_by(id: params[:id])

		if @comment.save
			redirect_to @post
		else
			puts @comment.errors
			redirect_to root_url
		end

	end

	private
	def comment_params
	  params.require(:comments).permit(:comment, :micropost_id) 
	end
end
