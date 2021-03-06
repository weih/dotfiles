#!/usr/bin/env ruby
alias q exit
Pry.config.theme = "monokai"
Pry.config.editor = 'mvim -f --nomru -c "au VimLeave * !open -a iTerm"'

require 'ostruct'
require 'thread'
require 'date'
require 'fileutils'
require 'net/http'
require 'json'
require 'yaml'
require 'pathname'
require 'time'
require 'securerandom'
require 'open-uri'

Thread.abort_on_exception = true

Pry.config.prompt = proc do |obj, level, _|
  prompt = ""
  prompt << "#{Rails.version}@" if defined?(Rails)
  prompt << "#{RUBY_VERSION}"
  "#{prompt} (#{obj})> "
end

Pry.commands.alias_command 'c', 'continue'
# Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'
Pry.commands.alias_command 'w', 'whereami'
Pry.commands.alias_command 'b', 'breakpoint'

if defined?(Rails)
  begin
    require "rails/console/app"
    require "rails/console/helpers"
  rescue LoadError
    require "console_app"
    require "console_with_helpers"
  end
end

begin
  require "awesome_print"
  AwesomePrint.pry!
  Pry.config.print = proc {|output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output)}
rescue LoadError
end

Pry::Commands.block_command('enable-pry', 'Enable `binding.pry` feature') do
    ENV['DISABLE_PRY'] = nil
end

begin
  require "active_support"
rescue LoadError
end
