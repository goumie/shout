class ShoutsController < ApplicationController
  def new
  @article = Article.new
  end
  
  def create
  @article = Article.new(params[:article])
  @article.save
  
  redirect_to shouts_url, :notice => 'it was created'
  end
  
  def index 
  @articles = Article.all
  end
  
  def show
  @article = Article.find(params[:id])
  end
  

end
