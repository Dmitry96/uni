class Course < ActiveRecord::Base
  include FriendlyId
  friendly_id :slug

  has_many :sections
  has_many :lessons

  validates :title, :slug, :short_description, :description, presence: true
end
