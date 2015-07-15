class PostsGaleriaController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
	#before_action :authenticate_user!, except: [:index, :show]

	def index
		
	end

	def galeria_de_projetos
	end

	def show
		@comments = Comment.where(posts_galerium_id: @posts_galerium)
	end

	def new
	  @post_galeria = current_user.Posts_Galeria.build
	end

	def create
		@posts_galerium = current_user.Posts_Galeria.build(post_params)

		if @posts_galerium.save
			redirect_to @posts_galerium
		else
			render 'new'	
		end
	end

	def edit
	end

	def update
		if @posts_galerium.update(posts_galerium_params)
			redirect_to @posts_galerium
		else
			render 'edit'
		end

	end

	def destroy
		@posts_galerium.destroy
		redirect_to galeria_de_projetos_path
	end

	def upvote
		@posts_galerium.upvote_by current_user
		redirect_to :back
	end

	def downvote
		@posts_galerium.downvote_by current_user
		redirect_to :back
	end
	private 

	def find_post
		@posts_galerium = Posts_galeria.find(params[:id])
	end

	def post_params
		params.require(:post_galeria).permit(:title, :link, :description, :image)
	end
end
