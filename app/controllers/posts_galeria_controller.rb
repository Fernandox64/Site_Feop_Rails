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
	  @postgalerium = current_user.post_galeria.build
	end

	def create
		@post_galerium = current_user.post_galeria.build(posts_galerium_params)

		if @post_galerium.save
			redirect_to @post_galerium
		else
			render 'new'	
		end
	end

	def edit
	end

	def update
		if @post_galerium.update(post_galerium_params)
			redirect_to @posts_galerium
		else
			render 'edit'
		end

	end

	def destroy
		@post_galerium.destroy
		redirect_to galeria_de_projetos_path
	end

	def upvote
		@post_galerium.upvote_by current_user
		redirect_to :back
	end

	def downvote
		@post_galerium.downvote_by current_user
		redirect_to :back
	end
	private 

	def find_post
		@post_galerium = Posts_Galeria.find(params[:id])
	end

	def post_params
		params.require(:post_galeria).permit(:title, :link, :description, :image)
	end
end
