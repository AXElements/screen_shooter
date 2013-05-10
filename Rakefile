if defined? MACRUBY_REVISION
  def on_macruby?
    true
  end
else
  def on_macruby?
    false
  end
end

def on_mri?
  !on_macruby?
end

task :default => :test

# @todo restore the clang analyze task, don't forget to add rubyhdrdir

desc 'Startup an IRb console with accessibility-core loaded'
task :console => 'compile:core' do
  sh 'irb -Ilib -rscreen_shooter'
end

# Gem stuff

require 'rubygems/package_task'
SPEC = Gem::Specification.load('screen_shooter.gemspec')

Gem::PackageTask.new(SPEC) { }

desc 'Build and install gem (not including deps)'
task :install => :gem do
  require 'rubygems/installer'
  Gem::Installer.new("pkg/#{SPEC.file_name}").install
end

