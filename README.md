# NOTICE

DO NOT USE.

THIS GEM SHOULD NOT BE USED. IT QUICKLY BECAME A DUMPING GROUND FOR HACKY METAPROGRAMMING SOLUTIONS. IT MODIFIED MANY CORE RUBY OBJECTS IN FUNDAMENTAL WAYS, BREAKING OTHER RUBY CODE IN UNEXPECTED WAYS. IT IS ONLY KEPT HERE TO ALLOW EXISTING PROJECTS TO CONTINUE TO WORK. ATTEMPT TO REMOVE IT FROM PROJECTS WHERE POSSIBLE.

DO NOT USE.

# TFG::Support

A collection of handy helpers and extensions to the Ruby core library.
Should only contain application-nonspecific code that is of general use.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "tfg_support"
```

And then execute:

```sh
$ bundle
```

This gem does not depend on `active_support`, however, if you with to use `Hash#with_indifferent_equality` you must ensure that `active_support` is loaded before `tfg_support`.

## Documentation

The codebase is documented using `yard`.

Documentation can be viewed in the source tree or at [RubyDoc](http://rubydoc.info/github/thefrontiergroup/thefrontiergroup-tfg_support/master/frames).

## Versioning

This project uses [Semantic Versioning](http://semver.org).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a Pull Request
