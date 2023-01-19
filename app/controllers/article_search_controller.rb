class ArticleSearchController < ApplicationController
  def index
    @articles = Article.where("name LIKE ?", "%#{params[:search]}%")
  end
end
