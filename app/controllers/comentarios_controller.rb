class ComentariosController < ApplicationController
	before_action :authenticate_user!
	def create
		@gallery = Gallery.find(params[:gallery_id])
		@comentario = Comentario.create(params[:comentario].permit(:content))
		@comentario.user_id = current_user.id
		@comentario.gallery_id = @gallery.id

		if @comentario.save
			redirect_to gallery_path(@gallery)
		else 
			render 'new'
		end
		
	end
end
