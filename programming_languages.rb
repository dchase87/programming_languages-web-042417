def reformat_languages(languages)
  new_hash = {}
  oo_array = []
  functional_array = []
  both_array = []
  languages.each do |style, style_data|
    if style == :oo
      oo_array << style
      both_array << style
        style_data.each do |language, language_data|
          new_hash[language] = {type: language_data[:type], style: oo_array}
        end
    elsif style == :functional
      functional_array << style
      both_array << style
        style_data.each do |language, language_data|
          new_hash[language] = {type: language_data[:type], style: functional_array}
          if language == :javascript
            new_hash[language] = {type: language_data[:type], style: both_array}
          end
        end
    end
  end
  new_hash
end
