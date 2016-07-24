module CategoryHelper
  def format_data(string=nil)

    if I18n.locale.to_s == "en"
      if !string.nil?
        string[6..9]+"-"+string[0..1]+"-"+string[3..4]
      else
        nil
      end  
    elsif I18n.locale.to_s == "pt-BR"
      if !string.nil?
        string[6..9]+"-"+string[3..4]+"-"+string[0..1]
      else
        nil
      end
    end
  end
end
