#!/usr/bin/env ruby
# References:
#   

require 'base64'
require "zlib"

r = File.read(ARGV[0])

# Inflate
inflated = Zlib::Inflate.inflate(Base64.decode64(r))

File.write(ARGV[1], inflated.strip)

p "File sizes: #{r.length} --> #{inflated.strip.length}"
