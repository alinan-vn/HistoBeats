class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find_by(id: params[:id])
        
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params(:rating, :comment, :song_id, :user_id))
        if @review.valid?
            @review.save
            redirect_to review_path(@review)
        else
            render :new
        end
    end

    def edit
        @review = Review.find_by(id: params[:id])
    end

    def update
        @review = Review.find_by(id: params[:id])
        @review.assign_attributes(review_params(:rating, :comment))
        if @review.valid?
            @review.save
            redirect_to review_path(@review)
        else
            render :edit
        end
    end
    
    def destroy
        @review = Review.delete(params[:id])
        redirect_to reviews_path
    end

    private

    def review_params(*args)
        params.require(:review).permit(*args)
    end
end
