#!/usr/bin/ruby

# Convert all inputs to integers and sort them numerically
result = ARGV.map { |arg| arg.to_i }.sort

puts result
