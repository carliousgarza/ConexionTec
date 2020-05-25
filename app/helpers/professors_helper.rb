module ProfessorsHelper
  def professor_options
    Professor.all.collect { |professor| [ professor.user.full_name, professor.id ] }
  end
  def professor_first_name(professor)
    professor.user.first_name
  end
  def professor_last_name(professor)
    professor.user.last_name
  end
  def professor_status(professor)
    professor.user.status
  end
end
