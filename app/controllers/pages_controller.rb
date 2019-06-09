class PagesController < ApplicationController
  def index
    #TODO Movieも検索できるようにする。union all or view?
    @pages = Photo.eager_load(:photo_category, :img_size).page(params[:page]).order(updated_at: "DESC")
  end
end
