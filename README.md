# PunditScaffoldGenerator

Gem `pundit` is quite a popular authorization tool for Rails projects.
Unfortunately it lacks the code to produce the files during `rails generate scaffold`.

This gem is intendet to close the hole.

## Installation

Add the line `gem 'pundit_scaffold_generator'` to your `Gemfile` in the group `:development, :test` and run `bundle install`


## Usage

The code for `<model>_policy.rb` and `<model>_policy_spec.rb` will be generated automatically when you run `rails generate scaffold` command.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dima4p/pundit_scaffold_generator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
