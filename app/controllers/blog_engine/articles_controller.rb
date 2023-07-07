module BlogEngine
  class ArticlesController < ApplicationController   ## inside engine controller clear
    before_action :set_article, only: %i[ show edit update destroy ]

    # GET /articles
    def index
      @articles = Article.all
    end

    # GET /articles/1
    # def show
    #   @article = Article.all
    # end

    # GET /articles/new
    def new
      @article = Article.new
    end

    # POST /articles
    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to @article, notice: "Article was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end


    # DELETE /articles/1
    def destroy
      @article.destroy
      redirect_to articles_url, notice: "Article was successfully destroyed.", status: :see_other
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_article
        @article = Article.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def article_params
        params.require(:article).permit(:title, :text)
      end
  end
end
