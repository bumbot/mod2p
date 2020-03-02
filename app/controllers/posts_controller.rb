class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        @post.user_id = session[:user_id]
        if @post.valid?
            @post.save
            redirect_to post_path(@post)
        else
            render :new
        end
        @post.save
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        if @post.valid?
            redirect_to post_path(@post)
        else
            render :edit
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :content) 
    end
    
end
