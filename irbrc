#!/usr/bin/ruby

require 'rubygems'
require 'pp'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

=begin

require 'irb/completion'
require 'irb/ext/save-history'

%w[looksee/shortcuts wirble].each { |gem| require gem }

=end
