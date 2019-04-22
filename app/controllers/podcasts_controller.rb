class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all
  end

  def show
    @podcast = Podcast.find(params[:id])
    @episode_podcast = @podcast.episodes
  end

  def new
    @podcast = Podcast.new
  end

  def create
    @podcast = Podcast.new(podcast_params)
    if @podcast.save
      redirect_to @podcast
    else
      render 'new'
    end
  end

  def edit
    @podcast = Podcast.find(params[:id])
  end

  def update
    @podcast = Podcast.find(params[:id])

    if @podcast.update(podcast_params)
      redirect_to @podcast
    else
      render 'edit'
    end
  end

  def destroy
    @podcast = Podcast.find(params[:id])
    @podcast.destroy
    render 'index'
  end

  private
  def podcast_params
    params_permit(:title, :show_note, :mp3_file)
  end
end