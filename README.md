# Shoden Contrib - [![Gem Version](https://badge.fury.io/rb/shoden-contrib.svg)](http://badge.fury.io/rb/shoden-contrib)

![](http://www.lashwallpapers.com/wp-content/uploads/2014/05/elephant-wallpaper-in-hd-free-download.jpg)

shoden-contrib adds some sugar to play with Shoden

## Installation

```bash
gem install shoden-contrib
```

## Data Types

```ruby
class Person < Shoden::Model
  include Shoden::DataTypes

  attribute :age, Type::Integer
end
```

## Default

```ruby
class Person < Shoden::Model
  include Shoden::Default

  attribute :name
  default   :name, 'John Doe'
end
```

## Timestamps
```ruby
class Person < Shoden::Model
  include Shoden::Timestamps
end

person = Person.create
person.created_at
person.updated_at
```
