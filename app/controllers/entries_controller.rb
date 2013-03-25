class EntriesController < ApplicationController
  def create
    @entry = Entry.new(params[:entry])

    render 'new' unless  @entry.save
  end
end
