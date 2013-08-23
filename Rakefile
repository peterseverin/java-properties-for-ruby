require "bundler/gem_tasks"
require 'rake/testtask'
require "rake/clean"

CLEAN.add('build')
CLOBBER.add('pkg')

Rake::TestTask.new do |t|
  t.libs << "."
  t.test_files = FileList['test/test_*.rb']
  t.verbose = true
end