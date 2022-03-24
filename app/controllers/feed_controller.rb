class FeedController < ApplicationController
  def index
    @posts = Post.includes(:user_profile).order("created_at DESC")
  end
end
