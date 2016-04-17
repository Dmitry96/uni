class Post < ActiveRecord::Base
  validates :title, :url, :content, presence: true
  validates :url, uniqueness: true
  extend FriendlyId
  friendly_id :url

  
  default_scope -> { order('created_at DESC') }
  scope :published, -> { where(published: true) }


end
