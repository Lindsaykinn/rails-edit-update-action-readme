class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit
    #stores article record in an instance variable:
    @article = Article.find(params[:id])
  end

  def update
    #1. Query the database for the Article record that matches the :id passed to the route.
    #2. Store the query in an instance variable.
    @article = Article.find(params[:id])
    #3. Update the values passed from the form (the update method here is the update method supplied by Active Record, not the update method we're creating). The update method takes a hash of the attributes for the model as its argument, e.g. `Article.find(1).update(title: "I'm Changed", description: "And here too!")
    #4. Save the changes in the database.
    @article.update(title: params[:article][:title], description: params[:article][:description])
    #5. Redirect the user to the show page so they can see the updated record.
    redirect_to article_path(@article)
    
  end

end
