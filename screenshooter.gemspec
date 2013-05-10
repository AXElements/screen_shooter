require './lib/screen_shooter/version'

Gem::Specification.new do |s|
  s.name     = 'screen_shooter'
  s.version  = ScreenShooter::VERSION

  s.summary     = 'Take screen shots easily on OS X using Ruby'
  s.description = <<-EOS
Take screen shots, full screen or arbitrary boxes, using Ruby. Images
can be compared easily or saved to disk.
  EOS
  s.authors     = ['Mark Rada']
  s.email       = 'mrada@marketcircle.com'
  s.homepage    = 'https://github.com/AXElements/screen_shooter'
  s.licenses    = ['BSD 3-clause']
  s.has_rdoc    = 'yard'

  s.files            =
    Dir.glob('lib/**/*.rb*') +
    ['Rakefile', 'README.markdown', 'History.markdown', '.yardopts']
  s.test_files       =
    Dir.glob('test/**/test_*.rb') +
    [ 'test/helper.rb' ]
end
