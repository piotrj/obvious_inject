# ObviousInject

[![Build Status](https://travis-ci.org/piotrj/obvious_inject.svg?branch=master)](https://travis-ci.org/piotrj/obvious_inject)

This is a tongue in cheek gem that gives you an implementation of Enumerable's inject that you don't have to google every time.
Are you always forgetting whether memo is the first or second argument? This gem is for you.

## Usage

```
  my_collection = [1,2,3]
  my_collection.obvious_inject do |x|
    x.memo # returns memo
    x.item # returns current item
  end
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

