class ScaffoldGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def copy_scaffold_file
    # copy_file "initializer.rb", "public/#{file_name}.rb"
    directory "sc_images/", "public/sc_images"
  end
end
