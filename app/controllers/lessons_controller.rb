class LessonsController < ApplicationController
  before_action :set_lesson_and_course, only: [:show]
  def show
  end

  private

  def set_lesson_and_course
    @course = Course.friendly.find params[:course_id]
    @lesson = @course.lessons.friendly.find(params[:id])
  end
end
