class LessonsController < ApplicationController
  before_action  :authenticate_enrollment
  def show
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  def authenticate_enrollment
    if current_user && current_user.enrolled_in?(current_lesson.section.course)
    else
      redirect_to course_path(current_lesson.section.course), alert: 'Not enrolled in the course'
    end
  end


end
