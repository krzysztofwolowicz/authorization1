class ConfrenzController < ApplicationController
  before_action :authenticate_user!

  def index
  # @posts = Post.all
  end
  #
  # def show
  #     @post = Post.find(params[:id])
  # end
  #
  # def new
  #   @post = Post.new
  # end
  #
  # def create
  #   @post = Post.new(post_params)
  #   @post.user = current_user
  #
  #   if @post.save
  #     flash[:notice] = "Post został utworzony."
  #     redirect_to posts_path, :notice => "Post został dodany"
  #   else
  #   render('new')
  #   end
  #
  # end
  #
  # def edit
  #   @post = Post.find(params[:id])
  #   authorize! :update, @post
  # end
  #
  # def update
  #   @post = Post.find(params[:id])
  #
  #   if @post.update_attributes(post_params)
  #     flash[:notice] = "Post został edytowany."
  #     redirect_to(post_path(@post))
  #   else
  #   render('edit')
  #   end
  # end
  #
  # def delete
  #   @post = Post.find(params[:id])
  #   authorize! :destroy, @post
  # end
  #
  # def destroy
  #   @post = Post.find(params[:id])
  #   @post.destroy
  #   flash[:notice] = "Post '#{@post.title}' został usunięty."
  #   redirect_to(posts_path)
  # end
  #
  # private
  #
  # def post_params
  #   params.require(:post).permit(:title, :content, :image)
  # end

end
