#!/usr/bin/env ruby
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')

# ensure the working dir is correct
Dir.chdir File.dirname(File.dirname(File.realpath(__FILE__)))

require 'bundler/setup'
require_relative '../lib/rcs-worker/backlog'

exit RCS::Worker::WorkerBacklog.run!(*ARGV)
