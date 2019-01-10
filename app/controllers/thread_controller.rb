class ThreadController < ApplicationController
  def show
    @groups = Group.all
    @posts = Post.all
  end
end
