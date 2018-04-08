module IconHelper
  def import_icon(icon)
    file_path = "#{Rails.root}/app/assets/images/icons/#{icon}.svg"
    return content_tag :span, class: "svg-icon" do 
      File.read(file_path).html_safe if File.exists?(file_path)
    end
    '(not found)'
  end
end