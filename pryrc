# -*- mode: ruby -*- vim:set ft=ruby:

Pry.config.editor = "vim"
Pry.config.commands.import Pry::ExtendedCommands::Experimental

default_command_set = Pry::CommandSet.new do
  command "copy", "Copy argument to the clip-board" do |str|
    IO.popen('pbcopy', 'w') { |f| f << str.to_s }
  end

  command "clear" do
    system 'clear'
    if ENV['RAILS_ENV']
      output.puts "Rails Environment: " + ENV['RAILS_ENV']
    end
  end
end

Pry.config.commands.import default_command_set
Pry.config.should_load_plugins = false

# loading rails configuration if it is running as a rails console
load File.dirname(__FILE__) + '/.railsrc' if defined?(Rails) && Rails.env

Pry.prompt = Pry::DEFAULT_PROMPT

