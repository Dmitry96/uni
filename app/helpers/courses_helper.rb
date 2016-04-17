module CoursesHelper
  def new_one(course, course_name)
    course.title == course_name ? true : false
  end
end
