class ArticlesController < ApplicationController

  def index
    @articles = Artcile.all
  end
  def new 
    @article = Artcile.new
  end
  def create 
    @article = Artcile.new(article_params)
    if @article.save

       flash.now[:suceess]="Data saved "
      redirect_to @article
    else
     flash.now[:danger]="Error "
     render 'new'
    end 
  end
  def show
    @article = Artcile.find(params[:id])
  end
  def edit
    @article = Artcile.find(params[:id])
  end
  def update
  @article = Artcile.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end

def destroy
  @article = Artcile.find(params[:id])
  @article.destroy
  redirect_to articles_path
end
  private
  def article_params
    params.require(:article).permit(:title , :text)
  end
end
