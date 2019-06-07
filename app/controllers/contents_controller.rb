class ContentsController < ApplicationController
  def news
    @contents = Content.all
  end
  def ticket

  end
  def show
    @content = Content.joins(:category).find(params[:id])
  end
end
