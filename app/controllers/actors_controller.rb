class ActorsController < ApplicationController
  def index
    @actors = Actor.all

    render :index
  end

  def create
    @actor = Actor.create(
    first_name: params["first_name"],
    last_name: params["last_name"],
    known_for: params["known_for"],
    movie_id: params["movie_id"]
    )

  render :show
  end

  def show
    @actor = Actor.find(params[:id])

    render :show
  end

  def update
      @actor = Actor.find(params[:id])

      @actor.update(
        first_name: params["first_name"] || @actor.first_name,
        last_name: params["last_name"] || @actor.last_name,
        known_for: params["known_for"] || @actor.known_for,
        movie_id: params["movie_id"] || @actor.movie_id
      )

    render :show
  end

  def destroy
    @actor = Actor.find(params[:id])

    @actor.destroy

    render json: { message: "Actor deleted" }
  end
end
