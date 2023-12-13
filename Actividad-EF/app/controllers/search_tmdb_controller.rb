class SearchTmdbController < ApplicationController
    def search_tmdb
      @search_terms = params[:Movie_Name]
      @movies = Movie.find_in_tmdb(@search_terms)
      if @movies.empty?
        flash[:notice] = "'#{@search_terms}' was not found in TMDb."
        redirect_to movies_path
      end
    end
  end