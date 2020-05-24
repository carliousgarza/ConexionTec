module ProjectsHelper
  def project_status_options()
    [['Registrado', 'registered'], ['Aprobado', 'approved'], ['No aprobado', 'disapproved'],
     ['Evaluado', 'evaluated'], ['Aceptado', 'accepted'], ['Rechazado', 'rejected'],
     ['Declinado', 'declined'], ['Faltó', 'missed']]
  end

  def project_description(project)
    project_detail = project.project_detail
    project_detail.description
  end

  def project_name(project)
    project_detail = project.project_detail
    project_detail.name
  end

  def project_professor(project)
    professor = project.professor
    user = professor.user
    user.full_name
  end

  def project_professor_email(project)
    professor = project.professor
    user = professor.user
    user.email
  end

  def project_score(project)
    committee_evaluation = project.committee_evaluation
    committee_evaluation.score
  end

  def project_stand(project)
    project_event_details = project.project_event_detail
    project_event_details.stand
  end

  def project_student(project)
    student = project.student
    user = student.user
    user.full_name
  end

  def project_student_email(project)
    student = project.student
    user = student.user
    user.email
  end

  def display_project_professor_info(project)
    project_professor = project_professor(project)
    project_professor_email = project_professor_email(project)
    return "#{project_professor} • #{project_professor_email}"
  end

  def display_project_score(project)
    project_score = project_score(project)
    project_score.present? ? project_score : "Pendiente"
  end

  def display_project_stand(project)
    project_stand = project_stand(project)
    project_stand.present? ? project_stand : "Pendiente"
  end

  def display_project_status(project)
    project_status = project.status
    project_status_options().find { |key, value| value == project_status }.first
  end

  def display_project_student_info(project)
    project_student = project_student(project)
    project_student_email = project_student_email(project)
    return "#{project_student} • #{project_student_email}"
  end
end
