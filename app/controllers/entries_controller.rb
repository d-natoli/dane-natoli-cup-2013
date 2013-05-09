class EntriesController < ApplicationController
  def index
    @entries = Entry.all.shuffle
  end

  def create
    @entry = Entry.new(params[:entry])

    render 'new' unless  @entry.save
  end
end
