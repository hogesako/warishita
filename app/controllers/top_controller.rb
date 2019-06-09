class TopController < ApplicationController
  def show
    @contents = Content.eager_load(:category).select("*").limit(3).order(updated_at: "DESC")
  end
end
