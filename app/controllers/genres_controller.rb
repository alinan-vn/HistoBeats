class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find_by(id: params[:id])
        @songs = Song.all
    end

    # def new
    #     # @genre = Genre.new
    # end

    # def create
    #     # @genre = Genre.new(genre_params(:rating, :comment, :song_id, :user_id))
    #     # if @genre.valid?
    #     #     @genre.save
    #     #     redirect_to review_path(@genre)
    #     # else
    #     #     render :new
    #     # end
    # end

    # def edit
    #     # @genre = Genre.find_by(id: params[:id])
    # end

    # def update
    #     # @genre = Genre.find_by(id: params[:id])
    #     # @genre.assign_attributes(review_params(:rating, :comment))
    #     # if @genre.valid?
    #     #     @genre.save
    #     #     redirect_to review_path(@genre)
    #     # else
    #     #     render :edit
    #     # end
    # end
    
    # def destroy
    #     # @genre = Genre.delete(params[:id])
    #     # redirect_to reviews_path
    # end

    # private

    # def genre_params(*args)
    #     params.require(:genre).permit(*args)
    # end
end
