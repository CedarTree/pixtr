class ImagesController < ApplicationController
	def new
		@gallery = Gallery.find(params[:gallery_id])
		@image = Image.new
	end

	def create
		# params image url
		@gallery = Gallery.find(params[:gallery_id])
		@image = Image.new(image_params)	

		if @image.save
			redirect_to gallery
		else
			render :new
		end 
	end

	def edit
		@gallery = Gallery.find(params[:gallery_id])
		@image = @gallery.images.find(params[:id])
	end

	def update
		@gallery = Gallery.find(params[:gallery_id])
		@image = @gallery.images.find(params[:id])
		@image.update(image_params)

		redirect_to @gallery

	end

	private

	  def image_params
		  params.
		  require(:image).
		  permit(:url).
		  merge(gallery_id: params[:gallery_id])
    	  #url: "http//i.gabebw.com/aaugh.gif"
    	  #after merge:
    	  #(url: "http//i.gabebw.com/aaugh.gif", gallery_id "1"
      end

end

