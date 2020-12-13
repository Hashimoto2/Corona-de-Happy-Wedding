class  Admins::HomesController < ApplicationController
  def top
    @article = Article.all
  end
end
