class Entry < ActiveRecord::Base
  attr_accessible :name, :email, :picture

  validates :name, :presence => true
  validates :email, :presence => true
  validates :picture, :attachment_presence => true

  has_attached_file :picture
end
