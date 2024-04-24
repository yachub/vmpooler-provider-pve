require 'rspec/core/rake_task'

rubocop_available = Gem::Specification::find_all_by_name('rubocop').any?
require 'rubocop/rake_task' if rubocop_available

desc 'Run rspec tests with coloring.'
RSpec::Core::RakeTask.new(:test) do |t|
  t.rspec_opts = %w[--color --format documentation]
  t.pattern    = 'spec/'
end

desc 'Run rspec tests and save JUnit output to results.xml.'
RSpec::Core::RakeTask.new(:junit) do |t|
  t.rspec_opts = %w[-r yarjuf -f JUnit -o results.xml]
  t.pattern    = 'spec/'
end

if rubocop_available
  desc 'Run RuboCop'
  RuboCop::RakeTask.new(:rubocop) do |task|
    task.options << '--display-cop-names'
  end
end

task :default => [:test]
