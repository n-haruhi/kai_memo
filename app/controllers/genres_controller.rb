class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genres_path, notice: "You have created genre successfully."
    else
      render :new
    end
  end

  def index
    @genres = Genre.all
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    if @genre = Genre.update(genre_params)
      redirect_to genres_path, notice: "You have updated genre successfully."
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: "You have deleted genre successfully."
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

end
