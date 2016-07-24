module CategoryHelper
  def format_data(string)
    string[6..9]+"-"+string[3..4]+"-"+string[0..1]
  end
end
