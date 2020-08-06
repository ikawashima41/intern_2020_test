# !/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
	# Install Homebrew
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

which -s swiftlint
if [[ $? != 0 ]] ; then
	# Install swiftlint
	brew install swiftlint
else
    brew upgrade swiftlint
fi

which -s carthage
if [[ $? != 0 ]] ; then
	brew install carthage
else
	brew upgrade carthage
fi

carthage update --platform iOS 
