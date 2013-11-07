description "Modern UI for Sass"

# Stylesheet importing Modern UI
stylesheet 'styles.scss', :media => 'screen, projection'

#
# Other Modern UI assets
basedir = '../../app/assets'

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
  javascript "#{basedir}/javascripts/metro-ui-#{file}.js", :to => "metro-ui-#{file}.js"
end
