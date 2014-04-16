# Elias

Elias (as in Walter Elias Disney) is a Ruby library for interacting with the [TouringPlans.com](http://touringplans.com) [API](http://touringplans.com/api). It can give you information about the Disney parks their attractions, dining establishments, and hotels.

## Usage

```ruby
e = Elias::Client.new

e.resorts # => [ Elias::Resort, Elias::Resort ]
e.resorts.first # => [ Elias::Resort ]
```
