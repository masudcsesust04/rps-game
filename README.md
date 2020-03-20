# Rock paper scissors game

##Install ruby 2.6.5
Follow link https://github.com/rbenv/rbenv to install ruby using rbenv.

After rbenv installation install ruby 2.6.5
```
$ rbenv install 2.6.5
$ rbenv rehash
$ rbenv global 2.6.5
```

Troubleshoot installed ruby version
```
$ ruby -v # system default ruby if you have any
$ rbenv version # you are using ruby through rbenv will work as well
```

## Install dependencies:
```
$ cd [navigate to application source code directory from terminal]
$ bundle install --path vendor/bundle 
```
Note: It will install application specific dependencies to the under ```vendor/bundle``` folder in the application directory.

Inside application root directory run following command to start playing the RPS game-
```
$ ruby run.rb
```

1. It will ask "Do you want to play Human vs Computer?(Y/n)" 
2. If you press 'Y' or 'y' or 'press enter' key it will start a game human vs computer mode
- 2.1. Then it will ask your name and move and it will automatically generate computer name and move to play 
3. other wise it will enter computer vs computer mode

Run test suite:
```
$ bundle exec rspec spec.rb
```

