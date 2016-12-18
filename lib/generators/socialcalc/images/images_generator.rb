class Socialcalc::ImagesGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_image_files
    directory "sc_images/", "public/sc_images"
  end
end
