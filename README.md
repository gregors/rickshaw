# Rickshaw

Easy way to get a SHA1 hash

yes I'm this lazy.

## Installation

Add this line to your application's Gemfile:

    gem 'rickshaw'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rickshaw

## Usage
    > Rickshaw::SHA1.hash('LICENSE.txt')
     => "4659d94e7082a65ca39e7b6725094f08a413250a" 

    > "hello world".to_sha1
     => "2aae6c35c94fcfb415dbe95f408b9ce91ee846ed" 

    > Rickshaw::SHA256.hash("LICENSE.txt")
     => "34c15a6c0d68a79f320f7c0d11ab50f2cb9b0cb9f8bd791ce06340f7448df289"

    > "hello world".to_sha256
     => "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"

    > "hello world".to_md5
     => "5eb63bbbe01eeed093cb22bb8f5acdc3"

    We can also pack/unpack our hashes to/from binary strings

    > "hello world".to_sha1.packed_bytes
      => "*\xAEl5\xC9O\xCF\xB4\x15\xDB\xE9_@\x8B\x9C\xE9\x1E\xE8F\xED"

    > "*\xAEl5\xC9O\xCF\xB4\x15\xDB\xE9_@\x8B\x9C\xE9\x1E\xE8F\xED".unpacked_bytes
      => "2aae6c35c94fcfb415dbe95f408b9ce91ee846ed"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
