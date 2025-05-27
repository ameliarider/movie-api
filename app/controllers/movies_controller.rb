class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    render :index
  end

  def create
    @movie = Movie.create(
    name: params["name"],
    description: params["description"],
    release_date: params["release_date"]
    )

  render :show
  end

  def show
    @movie = Movie.find(params[:id])

    render :show
  end

  def update
      @movie = Movie.find(params[:id])

      @movie.update(
        name: params["name"] || movie.name,
        description: params["description"] || movie.description,
        release_date: params["release_date"] || movie.release_date
      )

    render :show
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy

    render json: { message: "Movie deleted" }
  end
end
