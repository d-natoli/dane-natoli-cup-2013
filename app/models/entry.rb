class Entry < ActiveRecord::Base
  attr_accessible :name, :email, :picture

  validates :name, :presence => true
  validates :email, :presence => true
  validates_attachment :picture, :presence => true,
                                 :content_type => { :content_type => /image/ }
  validate :uploaded_limit

  has_attached_file :picture, :styles => { :large => "1000>" , :medium => "500>" }
  
  before_validation :titleize_name

  private

  def uploaded_limit
    errors.add(:base, "You can only upload up to 3 photos.") if self.email && Entry.where(:email => self.email).count > 2 
  end

  def titleize_name
    self.name = self.name.titleize
  end
end
