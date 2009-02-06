require 'rake'
require 'spec'

require 'spec/rake/spectask'


spec_files = Rake::FileList["spec/**/*_spec.rb"]

desc "Run specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = spec_files
  t.spec_opts = ["-c"]
end

desc "Package stuff so humans don't have to do it"
task :pack do
  FileUtils.mkdir('ruby-warrior-0.0.1')
  FileUtils.cp_r('lib','ruby-warrior-0.0.1/lib')
  FileUtils.cp_r('bin','ruby-warrior-0.0.1/bin')
  FileUtils.cp_r('data','ruby-warrior-0.0.1/data')
  FileUtils.cp_r('spec','ruby-warrior-0.0.1/spec')
  FileUtils.cp_r('templates','ruby-warrior-0.0.1/templates')
  FileUtils.cp_r('towers','ruby-warrior-0.0.1/towers')
  FileUtils.cp_r('graphics','ruby-warrior-0.0.1/graphics')
  FileUtils.cp('AUTHORS','ruby-warrior-0.0.1/AUTHORS')
  FileUtils.cp('README','ruby-warrior-0.0.1/README')
  FileUtils.cp('LICENSE','ruby-warrior-0.0.1/LICENSE')
  FileUtils.cp('GRAPHICS.README','ruby-warrior-0.0.1/GRAPHICS.README')
  FileUtils.cp('Rakefile','ruby-warrior-0.0.1/Rakefile')
  FileUtils.cp('TODO','ruby-warrior-0.0.1/TODO')
  sh 'tar -cf ruby-warrior-0.0.1.tar ruby-warrior-0.0.1'
  sh 'bzip2 ruby-warrior-0.0.1.tar'
end