# Rmaybe

This library gives maybe monad on ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'rmaybe'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rmaybe

## Usage

    "a b c".maybe.split[2].upcase.end #=> C

    "a b c".maybe.split[3].upcase.end #=> nil


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
