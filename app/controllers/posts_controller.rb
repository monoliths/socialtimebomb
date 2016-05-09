class PostsController < ApplicationController

  # this will call set_post before and ONLY for the action cancel
  before_action :set_post, only: [:cancel]

  def new
    if current_user.connections.any?
      @post = Post.new
    else
      redirect_to dashboard_path, notice: 'You need a social network connection to create a post.'
    end
  end

  def create
    @post = current_user.posts.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to dashboard_path, notice: 'Post created successfully!'}
      else
        format.html { render :new}
      end
    end
  end

  def cancel
    @post.update_attributes(state: 'canceled')
    redirect_to dashboard_path, notice: "Post was successfully cancled"
  end

  def show
    @post = Post.find_by(id: params[:id])
    if current_user !=  @post.user
			flash[:danger] = "Stop trying to view someone elses post!"
			redirect_to root_path
		end
  end

  private

  def post_params
    params.require(:post).permit(:content, :scheduled_at, :state, :user_id, :facebook, :twitter)
  end

  def set_post
    @post = Post.find(params[:id])
  end



end
