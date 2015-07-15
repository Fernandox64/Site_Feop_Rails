class GalleriesController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		#@posts = Post.all.order("created_at DESC")
		@galleries = Gallery.all.order("created_at DESC")
	end

	def show
		#@comments = Comment.where(post_id: @post)
		
	end

	def new
	  #@gallery = current_user.galleries.build
	  @gallery = Gallery.new
	end

	def create
		@gallery = Gallery.new(gallery_params)

		if @gallery.save
			redirect_to @gallery
		else
			render 'new'	
		end
	end

	def edit
	end

	def update
		if @gallery.update(gallery_params)
			redirect_to @gallery
		else
			render 'edit'
		end

	end

	def destroy
		@gallery.destroy
		redirect_to galeria_de_projetos_path
	end

	def upvote
		@gallery.upvote_by current_user
		redirect_to :back
	end

	def downvote
		@gallery.downvote_by current_user
		redirect_to :back
	end

	private 
	def find_post
		@gallery = Gallery.find(params[:id])
	end

	def gallery_params
		params.require(:gallery).permit(:title, :link, :description)
	end
end
