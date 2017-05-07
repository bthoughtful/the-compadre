class Admin::ArticlesController < AdminController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'Article created successfully!'
      redirect_to admin_article_path(@article)
    else
      flash[:notice] = 'Article creation failed :('
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update_attributes(article_params)
      flash[:notice] = 'Article updated successfully!'
      redirect_to admin_article_path(@article)
    else
      flash[:notice] = 'Article failed to update :('
      render :edit
    end
  end

  def destroy
    @article.destroy
    flash[:notice] = 'Article deleted successfully'
    redirect_to admin_articles_path
  end

  private

    def find_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body, :author)
    end
end
