class PostFavoritesController < ApplicationController

    # def new
    #     @postfavorite = PostFavorite.new
    # end

    def create
        # @post = Post.find(params[:post_id])
        @postfavorite = PostFavorite.create(user_id: session[:user_id], post_id: params[:post_id])
        redirect_to posts_path
    end


end
