# frozen_string_literal: true
begin
  require 'rubocop/rake_task'

  RuboCop::RakeTask.new

  task spec: :rubocop
rescue LoadError
  nil
end
