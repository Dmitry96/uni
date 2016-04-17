class Lesson < ActiveRecord::Base
  include FriendlyId
  friendly_id :slug

  belongs_to :section
  belongs_to :course
  validates :title, :slug, :description, :section_id, presence: true


   def next
    course.lessons.find_by('id > ?', id)
  end

  def previous
    course.lessons.where('id < ?', id).last
  end

  def get_section_lessons(course)
    section = course.lessons.find(id).section
    section.lessons.where(course_id: course.id).order(:id)
  end
end
