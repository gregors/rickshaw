require "rickshaw/version"
require 'digest/sha1'

module Rickshaw
  def self.hash(file_path)
    hash = Digest::SHA1.new
    open(file_path, 'r') do |io|
      while !io.eof
        buffer = io.read
        hash.update(buffer)
      end
    end
    hash.hexdigest
  end
end
