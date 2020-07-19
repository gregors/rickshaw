require 'digest/md5'
require 'digest/sha1'
require 'digest/sha2'
require 'rickshaw/version'
require 'core_ext/string/to_md5'
require 'core_ext/string/to_sha1'
require 'core_ext/string/to_sha256'
require 'core_ext/string/to_sha512'
require 'core_ext/string/to_base64'
require 'core_ext/string/byte_packing'

module Rickshaw
  module MD5
    def self.hash(file_path)
      hash = Digest::MD5.new
      Rickshaw::Helper.hash_file(hash, file_path)
    end
  end

  module SHA1
    def self.hash(file_path)
      hash = Digest::SHA1.new
      Rickshaw::Helper.hash_file(hash, file_path)
    end
  end

  module SHA256
    def self.hash(file_path)
      hash = Digest::SHA256.new
      Rickshaw::Helper.hash_file(hash, file_path)
    end
  end

  module SHA512
    def self.hash(file_path)
      hash = Digest::SHA512.new
      Rickshaw::Helper.hash_file(hash, file_path)
    end
  end

  module Helper
    def self.hash_file(hash, file_path)
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
