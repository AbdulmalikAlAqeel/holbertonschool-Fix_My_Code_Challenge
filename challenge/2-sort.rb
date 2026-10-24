#!/usr/bin/ruby

result = ARGV.map { |arg| arg =~ /^-?\d+$/ ? arg.to_i : arg }

result.sort! do |a, b|
  if a.is_a?(Integer) && b.is_a?(Integer)
    a <=> b
  elsif a.is_a?(Integer)
    -1
  elsif b.is_a?(Integer)
    1
  else
    a <=> b
  end
end

result.each do |n|
  puts n
end
