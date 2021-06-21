#!/zsh/sh
#
# Reading:
#
# https://gist.github.com/codeinthehole/26b37efa67041e1307db
# https://gist.github.com/cassiocardoso/649cd015d7c2eff7bdfe02bdcd50dcdd


echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew recipes
brew update

brew tap zackelia/formulae


PACKAGES=(
archey
bclm
ffmpeg
git
gh
rbenv
ruby
tldr
youtube-dl
)

echo ${PACKAGES[@]}

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup
