class StaticPagesController < ApplicationController
	def home
		@microposts = Micropost.all.order(created_at: :desc).page(params[:page])
	end
end
