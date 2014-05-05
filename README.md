# HTTPShell

HTTPShell is a simple console program that makes curl commands shorter and easier. It makes you able to directly run get/post/put/delete request in a line and with relative path.

## Installation

Run this line in your console.

    gem install httpshell

## Usage

To change the working path, do:

    http:/// > cd example

Run http request:

    http://example.com/ > post sessions
    # => {"uuid":"f64ff663-0df2-4954-89ee-f78e38ac284f","pairs":[]}

Using pipes to write variables:

    http://example.com/ > post sessions | $session_token
    http://example.com/session > debug
    # => session_token:	{"uuid":"f64ff663-0df2-4954-89ee-f78e38ac284f","pairs":[]}

Have fun playing!

## Contributing

1. Fork it ( https://github.com/[my-github-username]/httpshell/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
