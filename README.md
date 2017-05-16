# string-inquirer

Provides the same functionality as Rails' `ActiveSupport::StringInquirer` via the class `String::Inquirer`. Also provides `String#inquiry` as a convenience method for wrapping.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  string-inquirer:
    github: citizen428/string-inquirer
```

## Usage

```crystal
require "string-inquirer"

inquirer = String::Inquirer.new("test")
inquirer.test? #=> true
inquirer.foo?  #=> false
```

Convenience wraper:

```crystal
wrapped = "test".inquiry
wrapped.test? #=> true
wrapped.foo?  #=> false
```

## Contributing

1. Fork it ( https://github.com/citizen428/string-inquirer/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [citizen428](https://github.com/citizen428) Michael Kohl - creator, maintainer
