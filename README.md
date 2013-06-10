# TfgSupport

## Installation

Add this line to your application's Gemfile:

    gem 'tfg_support'

And then execute:

    $ bundle

## Usage

Provides some useful extentions to ruby classes.

### [Hash] (http://ruby-doc.org/core-2.0/Hash.html)

#### #deep

Allows access to hashes nested with in other hashes.

Replace

    value = some_hash[:foo][:bar][:baz] if some_hash[:foo] && some_hash[:foo][:bar]

with

    value = hash.deep[:foo, :bar, :baz]

also works for setting. New hashes will be created for missing keys.

    hash = {:foo=>{:bar=>{:baz=>:fizz}}}
    hash.deep[:foo, :bar, :baz] = :frob
    hash.deep[:foo, :missing_key, :baz] = :frob

    hash
     => {:foo=>{:bar=>{:baz=>:frob}, :missing_key=>{:baz=>:frob}}}

### [String] (http://ruby-doc.org/core-2.0/String.html)

#### to_boolean

Converts strings `'true' 't' 'yes' 'y' '1'` to `true`
and `'false' 'f' 'no' 'n' '0'` to `false`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
