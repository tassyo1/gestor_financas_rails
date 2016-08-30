module CategoryHelper
  def format_data(string=nil,insert=nil)
    if insert
      if I18n.locale.to_s == "en"
        if !string.nil? and !string.to_s.empty?
          string[6..9]+"-"+string[0..1]+"-"+string[3..4]
        else
          nil
        end  
      elsif I18n.locale.to_s == "pt-BR"
        if !string.nil? and !string.to_s.empty?
          string[6..9]+"-"+string[3..4]+"-"+string[0..1]
        else
          nil
        end
      end
    elsif insert == false
      if I18n.locale.to_s == "en"
        if !string.nil? and !string.to_s.empty?
          string[5..6]+"/"+string[8..9]+"/"+string[0..3]
        else
          nil
        end
      elsif I18n.locale.to_s == "pt-BR"
        if !string.nil? and !string.to_s.empty?
          string[8..9]+"/"+string[5..6]+"/"+string[0..3]
        else
          nil
        end
      end
    else
      nil
    end
  end
end
