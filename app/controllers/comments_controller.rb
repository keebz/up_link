class CommentsController < ApplicationController
before_filter :authorize, only: [:create, :destroy]

	def index
	end

	def new
		@comment = Comment.new
		@link = Link.find(params[:link_id])
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.link_id = params[:link_id]
		@comment.user_id = current_user.id 
		@comment.save
		redirect_to "/"
	end

	def show
	end

	def destroy
	end

	private
	def comment_params
		params.require(:comment).permit(:post, :link_id, :user_id)
	end

end