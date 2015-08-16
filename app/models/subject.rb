class Subject < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :events
  has_many :needs
end
