class PostsController < ApplicationController
  def create
    post = current_user.posts.create(
      content: post_params[:content],
    )
    redirect_to root_path
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
