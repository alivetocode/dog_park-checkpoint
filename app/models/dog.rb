class Dog < ActiveRecord::Base

  belongs_to :owner,
  inverse_of: :dogs

  validates_presence_of :name
  validates_presence_of :owner


end
