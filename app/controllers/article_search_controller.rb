class ArticleSearchController < ApplicationController
  layout false
  before_action :authenticate_user!
  def index
    puts params
    @articles = Article.where('name LIKE ?', "%#{params[:search]}%")
    @current_user = current_user
    @analytic = Analytic.create(event: params[:search], user_id: @current_user)
  end
end
