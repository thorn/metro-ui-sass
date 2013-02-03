description "Modern UI for Sass"

# Stylesheet importing bootstrap
stylesheet 'styles.scss', :media => 'screen, projection'

#
# Other Bootstrap assets
basedir = '../../vendor/assets'

# Glyphicons sprites
image_files = %w{
  preloader-w8-cycle-black
  preloader-w8-cycle-white
  preloader-w8-line-black
  preloader-w8-line-white
}

image_files.each do |file|
  image "#{basedir}/images/#{file}.gif", :to => "#{file}.gif"
end

# Javascripts
%w(accordion buttonset carousel dialog dropdown input-control pagecontrol rating slider start-menu tile-drag tile-slider).each do |file|
  javascript "#{basedir}/javascripts/modern-ui-#{file}.js", :to => "modern-ui-#{file}.js"
end
