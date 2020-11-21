class HomeController < ApplicationController

  # GET /
  # GET /.json
  def index
    @posts = Post.order(updated_at: :desc).page params[:page]
  end
end
