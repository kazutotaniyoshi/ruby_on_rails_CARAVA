class BlogsController < ApplicationController
  def index
      @blogs = Blog.all
  end

  def show
  end

  def new
     @blog = Blog.new
     blog.save
    redirect_to blogs_path
  end
  
  def edit
  end

  private
  def blog_params
   params.require(:blog).permit(:title, :category, :body)
  end
end
