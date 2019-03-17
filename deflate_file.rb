#!/usr/bin/env ruby
# References:
#   

# deflate --> encode64 --> File.write

require 'base64'
require "zlib"

r = File.read(ARGV[0])

# Compact file readed
compressed_data = Zlib::Deflate.deflate(r)
encoded_data = Base64.encode64 compressed_data

# Save file encrypted
File.write(ARGV[1], encoded_data)

p "File sizes: #{r.length} --> #{encoded_data.length}"
