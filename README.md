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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
