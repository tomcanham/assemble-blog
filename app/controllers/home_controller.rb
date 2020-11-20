class HomeController < ApplicationController

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order(updated_at: :desc).page params[:page]
  end
end
