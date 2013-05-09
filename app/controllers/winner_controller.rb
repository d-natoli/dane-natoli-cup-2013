class WinnerController < ApplicationController
  def index
    @dishonourable_1 = Entry.find(32)
    @dishonourable_2 = Entry.find(28)
    @third = Entry.find(15)
    @second = Entry.find(14)
    @first = Entry.find(21)
  end
end
