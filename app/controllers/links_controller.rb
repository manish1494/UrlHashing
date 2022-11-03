class LinksController < ApplicationController

  def show
    link = Link.find_by(hash_code: params[:short_url])
    if !link.nil?
      redirect_to link.original_url
    end
  end

  def create
    original_url = params[:link][:original_url]
    compact = Compact.new(original_url)
    @link = compact.generate_hash_link

    if @link.persisted?
      respond_to :js
    else
      render 'error.js.erb'
    end
  end




end
