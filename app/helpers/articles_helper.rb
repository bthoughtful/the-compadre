module ArticlesHelper
  def parse_date(date_string)
    date_string ? DateTime.parse(date_string).strftime("%B %d, %Y") : nil

  end
end
