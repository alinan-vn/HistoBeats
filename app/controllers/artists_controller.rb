class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find_by(id: params[:id])
        @songs = Song.all
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params(:name, :year, :artist_bio, :password, :password_confirmation))
        if @artist.valid? and params[:password] == params[:password_confirmation]
            @artist.save
            redirect_to artist_path(@artist)
        else
            render :new
        end
    end

    # def edit
    #     @artist = Artist.find_by(id: params[:id])
    # end

    # def update
    #     @artist = Artist.find_by(id: params[:id])
    #     @artist.assign_attributes(artist_params(:rating, :comment))
    #     if @artist.valid?
    #         @artist.save
    #         redirect_to artist_path(@artist)
    #     else
    #         render :edit
    #     end
    # end
    
    # def destroy
    #     @artist = Artist.delete(params[:id])
    #     redirect_to artists_path
    # end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end
