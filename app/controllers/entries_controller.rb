class EntriesController < ApplicationController
  def create
    @entry = Entry.new(params[:entry])

    @entry.save
  end
end
