class ArticleSearchController < ApplicationController
  layout false
  def index
    puts params
    @current_user = current_user
    @articles = Article.where('name LIKE ?', "%#{params[:search]}%")
  end
end
