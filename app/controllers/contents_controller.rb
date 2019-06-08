class ContentsController < ApplicationController
  def news
    @contents = Content.joins(:category).page(params[:page]).order(updated_at: "DESC")
  end
  def ticket

  end
  def show
    @content = Content.joins(:category).find(params[:id])
  end
end
