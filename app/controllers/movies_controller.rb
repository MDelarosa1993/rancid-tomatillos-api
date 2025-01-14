class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies, each_serializer: MoviePosterSerializer
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie, serializer: MovieDetailsSerializer
  end

  def update
    movie = Movie.find(params[:id])
    movie.update(movie_params)
    render json: movie, serializer: MoviePosterSerializer
  end

  def movie_params
    params.permit(:vote_count)
  end
end