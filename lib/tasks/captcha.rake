
desc 'Copy captcha images to the public/images directory.'
task :copy_captcha_images do
  PLUGIN_ROOT = File.dirname(__FILE__) + '/../..'
  Dir.glob("#{PLUGIN_ROOT}/public/images/captcha_*.jpg").each do |file|
    FileUtils.cp file, "#{::Rails.root.to_s}/public/images/", :verbose => true
  end
end

desc 'Removes the captcha images of the plugin.'
task :remove_captcha_images do
  Dir.glob("#{::Rails.root.to_s}/public/images/captcha_*.jpg").each do |file|
    FileUtils.rm file, :force => true, :verbose => true
  end
end