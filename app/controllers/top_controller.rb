class TopController < ApplicationController
  def show
    @contents = Content.eager_load(:category).select("*").limit(3).order(updated_at: "DESC")

    #TODO Movieも検索できるようにする。union all or view?
    @pages = Photo.eager_load(:photo_category, :img_size).select("*").limit(3).order(updated_at: "DESC")
  end
end
