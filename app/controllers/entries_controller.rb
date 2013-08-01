class EntriesController < ApplicationController
  def index
    @entries = Entry.all.shuffle
  end

  def create
    @entry = Entry.new(entry_params)

    render 'new' unless @entry.save
  end

  private

  def entry_params
    params.require(:entry).permit(:name, :email, :picture)
  end
end
