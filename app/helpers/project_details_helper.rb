module ProjectDetailsHelper
  def project_detail_category_options()
    [["Desarrollo Tecnológico", "technological_development"]]
  end

  def project_detail_area_options()
    [["Biotecnología y alimentos", "biotechnology_and_food"]]
  end

  def project_detail_type_of_options()
    [["Agrobiotecnología", "agrobiotechnology"]]
  end

  def project_detail_client_type_options()
    [["Departamento del Tec", "itesm_department"]]
  end

  def display_project_detail_area_options(project_detail)
    area = project_detail.area
    project_detail_area_options().find { |key, value| value == area }.first
  end
end
