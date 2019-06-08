class ContentsController < ApplicationController
  def news
    @contents = Content.eager_load(:category).page(params[:page]).order(updated_at: "DESC")
  end
  def ticket

  end
  def show
    @content = Content.eager_load(:category).find(params[:id])
  end
end
