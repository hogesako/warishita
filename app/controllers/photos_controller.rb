class PhotosController < ApplicationController
  def show
    @photo = Photo.eager_load(:photo_category, :img_size).find(params[:id])
  end
end
