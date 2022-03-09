class StaticPagesController < ApplicationController
	def home
		@microposts = Micropost.all.order(created_at: :desc).page(params[:page])
	end

	def love
		@microposts = Micropost.where(category: "love").order(created_at: :desc).page(params[:page])
	end
	def study
		@microposts = Micropost.where(category: "study").order(created_at: :desc).page(params[:page])
	end
	def question
		@microposts = Micropost.where(category: "question").order(created_at: :desc).page(params[:page])
	end
	def soliloquy
		@microposts = Micropost.where(category: "soliloquy").order(created_at: :desc).page(params[:page])
	end
end
