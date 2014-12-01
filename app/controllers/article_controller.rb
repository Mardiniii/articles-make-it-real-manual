class ArticleController < ApplicationController
	
	def index
		@articles = Article.all
	end

	def show
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
        redirect_to @article, notice: 'Article was successfully created.'

	end

	def edit
	end

	def update
		Article.find(params[:id]).update(article_params)
		redirect_to @article, notice: 'Article was successfully updated.'

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
