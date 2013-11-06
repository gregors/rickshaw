require 'digest/sha1'
require 'rickshaw/version'
require 'core_ext/string/to_sha1'

module Rickshaw
  module SHA1
    def self.hash(file_path)
      hash = Digest::SHA1.new
      open(file_path, 'r') do |io|
        until io.eof?
          buffer = io.read(1024)
          hash.update(buffer)
        end
      end
      hash.hexdigest
    end
  end
end
