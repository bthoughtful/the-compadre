module ArticlesHelper
  def parse_date(date_string)
    date_string == "" ? nil : DateTime.parse(date_string).strftime("%B %d, %Y")
  end
end
