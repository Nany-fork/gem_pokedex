# Pokedex

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/pokedex`. To experiment with that code, run `bin/console` for an interactive prompt.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pokedex'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install pokedex

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pokedex. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/pokedex/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Pokedex project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/pokedex/blob/master/CODE_OF_CONDUCT.md).


# Gem behavior

You can keep learning about the pokemons and their abilities and types


try to get the abilities of many pokemons
    
    $pokemon = Pokedex::Skills.new
    $pokemon.ability(id)

you can get the type of many pokemon
    
     $pokemon = Pokedex::Skills.new
     $pokemon.type(id)

also your favortite pokemon typing his/her name or if you are connoisseur of the subject typing the number of the pokemon wich abilities and moves

     $result = Pokedex::Pokemon.new
     $result.pokemon(name or id)

or a random pokemon, there are more than 500 pokemons , Which one do you think will come out?
     
     $result = Pokedex::Pokemon.new
     $result.random

Also you can filter what kind of data wants to return, the next list are the data that you can filter , depending on the method
     
## pokemon or random   
 
     $result = Pokedex::Pokemon.new
     $result.pokemon(name_or_id, filter)
     $result.random(name_or_id, filter)
     
- moves
- abilities
- game_indices
- held_items
- stats
- types

for default if no filter is assigned the result are the name and abilities of the pokemon


for skills is the same but the filter change a little bit, nex are the available filters

## type

     $pokemon = Pokedex::Skills.new
     $pokemon.type(id, filter)

-game_indices
-moves
-names
-pokemon

for default if no filter is assigned the result are the name and the pokemon that have the same type 

## ability

     $pokemon = Pokedex::Skills.new
     $pokemon.ability(id, filter)

-flavor_text_entries
-effect_entries
-names
-pokemon

for default if no filter is assigned the result are the name and the pokemon that have the same ability 
