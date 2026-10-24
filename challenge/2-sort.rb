#!/usr/bin/ruby

# Select only valid integers, convert them to integers, and sort them numerically
result = ARGV.select { |arg| arg =~ /^-?\d+$/ }.map(&:to_i).sort

puts result
