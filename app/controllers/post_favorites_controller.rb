class PostFavoritesController < ApplicationController

    def create
        @postfavorite = PostFavorite.create(user_id: session[:user_id], post_id: params[:post_id])
        redirect_to posts_path
    end


end
