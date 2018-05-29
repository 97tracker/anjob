module JobsHelper

  def job_type(job_type)
    if job_type == "Temps-plein"
      content_tag :span, "#{job_type}", class: "tag is-primary"
    elsif job_type == "Temps-partiel"
      content_tag :span, "#{job_type}", class: "tag is-link"
    elsif job_type == "Job-ete"
      content_tag :span, "#{job_type}", class: "tag is-warning"
    elsif job_type == "CDI"
      content_tag :span, "#{job_type}", class: "tag is-info"
    elsif job_type == "CDD"
      content_tag :span, "#{job_type}", class: "tag is-primary"
    elsif job_type == "Cash"
      content_tag :span, "#{job_type}", class: "tag is-warning"
    elsif job_type == "Independant"
      content_tag :span, "#{job_type}", class: "tag is-info"
    else
      ""
    end
  end

  def job_author(job)
    user_signed_in? && current_user.id == job.user_id
  end
end
