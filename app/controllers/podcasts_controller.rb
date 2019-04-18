class PodcastsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def podcast_params
    params_permit(:title, :show_note, :mp3_file)
  end
end