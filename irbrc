#!/usr/bin/ruby

require 'rubygems'
require 'pp'

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

# TODO check out irbtools meta-gem for other useful console gems
# https://github.com/janlelis/irbtools
# awesome_print (ap) - output in color
