module ApplicationsHelper
  def application_form_path(application)
    application.new_record? ?
      baseline_applications_path(application.baseline) :
      edit_application_path(application)
  end
end
