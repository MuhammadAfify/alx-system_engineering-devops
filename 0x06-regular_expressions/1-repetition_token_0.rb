#!/usr/bin/env ruby
# regular expression that match hbtn

puts ARGV[0].scan(/hbt{2,5}n/).join
