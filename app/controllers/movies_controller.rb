class MoviesController < ApplicationController
	def index
		@movies = Movie.order(:title)
		# @movies = Movie.all
		# @movies.sort_by! {|movie| movie.title}
		# @movies.sort! {|m1, m2| m1.title <=> m2.title}
	end
	def show
		id = params[:id] # retrieve movie ID - from URI route
		@movie = Movie.where(id: id).first # look up movie by unique ID
		if @movie.nil?
			flash[:warning] = "Movie with id #{id} does not exist"
			redirect_to movies_path
		end
		# will render app/views/movies/show.html.haml by default
	end
	def new
		@all_ratings = Movie.all_ratings
		# default: render 'new' template
	end
	def create
		@movie = Movie.create!(params[:movie])
		flash[:notice] = "#{@movie.title} was successfully created."
		redirect_to @movie
	end
	def edit
		@movie = Movie.find(params[:id])
		@all_ratings = Movie.all_ratings
	end
	def update
		@movie = Movie.find(params[:id])
		@movie.update_attributes!(params[:movie])
		flash[:notice] = "#{@movie.title} was successfully updated"
		redirect_to movie_path(@movie)
	end
	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		flash[:notice] = "#{@movie.title} deleted"
		redirect_to movies_path
	end
end