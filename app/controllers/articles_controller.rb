class ArticlesController < ApplicationController
	
	def index
		@articles = Article.all
		@article = Article.new
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.create(article_params)
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@articles = Article.all
		@article = Article.find(params[:id])
		@article.update(article_params)
	end

	def destroy
		Article.find(params[:id]).destroy
 		redirect_to articles_url, notice: 'Article was successfully destroyed.'

	end

	#Prevent the reception of dangerous params
	private
	def article_params
      params.require(:article).permit(:title, :author, :date, :published, :post)
    end
end
