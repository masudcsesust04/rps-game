# Rock paper scissors game

## Install rbenv(ruby version manager) 

Follow link https://github.com/rbenv/rbenv to install rbenv.

After installing rbenv install ruby version 2.6.5
```
$ rbenv install 2.6.5
$ rbenv rehash
$ rbenv global 2.6.5
```

Troubleshoot installed ruby version
```
$ ruby -v
or
$ rbenv version
```

## Install dependencies

First navigate to application source code directory from terminal then run
``` 
$ bundle install --path vendor/bundle 
```

Note: It will install application specific dependencies inside ```vendor/bundle``` folder in the application directory.

## Run application and test suit.

Run following command to start the game from application source directory.
```
$ ruby run.rb
```

Run test suite from application source directory:
```
$ bundle exec rspec spec.rb
```

## How to play?
1. Once you run ```ruby run.rb``` file it will ask "Do you want to play Human vs Computer?(Y/n)" 
2. Press 'Y' / 'y' / 'Press enter' key to play game as human vs computer mode. Then it will ask to enter your ```name``` and ```move```. It will take name and move input from computer. 
3. Otherwise it will enter computer vs computer mode.

