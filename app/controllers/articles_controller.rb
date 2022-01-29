class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.(article_params)

    if @article.save
      redirect_to articles_path
    else
      render :new
    end

    private
    def article_params
      params.require(:article).permit(:name, :body)
    end
  end
end
