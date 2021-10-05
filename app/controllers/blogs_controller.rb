class BlogsController < ApplicationController
  def index
  end

  def show
    @blog = Blog.new
     blog.save
    redirect_to blogs_path
  end

  def new
  end

  def edit
  end

  privete
  def blog_params
   params.require(:blog).permit(:title, :category, :body)
  end
end
