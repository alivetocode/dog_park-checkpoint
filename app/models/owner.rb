class Owner < ActiveRecord::Base
  has_many :dogs,
    dependent: :destroy,
    inverse_of: :owner


  validates_presence_of :first_name
  validates_presence_of :last_name

  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

end
