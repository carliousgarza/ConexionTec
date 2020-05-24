module ApplicationHelper
  def boolean_options
    [['Sí', true], ['No', false]]
  end

  def major_options
    ["IRS", "ITC", "ITD"]
  end

  def get_current_edition_id
    current_date = Date.today
    Edition.all.each do |edition|
      if edition.start_date < current_date && edition.end_date > current_date
          return edition.id
      end
    end
  end

end
