module ApplicationHelper
  def boolean_options
    [['Sí', true], ['No', false]]
  end

  def major_options
    ["IRS", "ITC", "ITD"]
  end

  def display_boolean_value(value)
    value ? "Sí" : "No"
  end
end
