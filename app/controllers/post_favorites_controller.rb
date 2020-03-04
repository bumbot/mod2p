class PostFavoritesController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        @postfavorite = PostFavorite.create(user_id: session[:user_id], post_id: params[:post_id])
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find(params[:post_id])
        @postfavorite = PostFavorite.find_by(user_id: session[:user_id], post_id: params[:post_id])
        @postfavorite.destroy
        redirect_to post_path(@post)
    end


end
