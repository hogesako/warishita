class ContentsController < ApplicationController
  def news
    @news = Content.find();
  end
  def ticket

  end
  def show

  end
end
