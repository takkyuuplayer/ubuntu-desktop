name 'ubuntu-desktop'
description 'Tools install for Ubuntu as desktop'
recipes = %w(
  vim
  zsh
  screen
  java
  git
  nodejs

  tools
).map { |recipe| "recipe[#{recipe}]" }
run_list recipes
