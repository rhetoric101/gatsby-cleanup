#!/bin/zsh

cd /Users/rsiebens/Documents/git/docs-website

if [ -d "gatsby" ]
then

  #Prompt user for type of cleanup.
  
  echo "Press 1 for light clean:"
  echo "    *yarn"
  echo "    *yarn clean"
  echo "    *yarn start"
  echo "Press 2 for a heavy scrub"
  echo "    *rm -rf .cache"
  echo "    *yarn"
  echo "    *yarn clean"
  echo "    *yarn start"
  echo "Press 3 for a full pressure wash"
  echo "    *rm -rf .cache"
  echo "    *rm -rf node_modules"
  echo "    *yarn"
  echo "    *yarn clean"
  echo "    *npm rebuild --verbose sharp"
  echo "    *yarn start"
  read typeOfCleanup

  case $typeOfCleanup in
    [1] )

      echo "*************************************************"
      echo "We\'re installing yarn again:"
      echo "yarn"
      echo "*************************************************"
      yarn && echo "Yarn is reinstalled!"

      echo "*************************************************"
      echo "We\'re cleaning up any lingering yarn issues:"
      echo "yarn clean"
      echo "*************************************************"
      yarn clean && echo "Yarn is clean!"

      echo "*************************************************"
      echo "OK, we\'re on the final stretch. We\'re running yarn:"
      echo "*************************************************"
      yarn start

      ;;

    [2] )
      echo "You selected option 2 (The heavy scrub!)"

      echo "*************************************************"
      echo "Say goodbye to those old cache files:"
      echo "rm -rf .cache"
      echo "*************************************************"
      rm -rf .cache && echo "Those old cache files are gone!"

      echo "*************************************************"
      echo "We\'re installing yarn again:"
      echo "yarn"
      echo "*************************************************"
      yarn && echo "Yarn is reinstalled!"

      echo "*************************************************"
      echo "We\'re cleaning up any lingering yarn issues:"
      echo "yarn clean"
      echo "*************************************************"
      yarn clean && echo "Yarn is clean!"

      echo "*************************************************"
      echo "OK, we\'re on the final stretch. We\'re starting yarn:"
      echo "*************************************************"
      yarn start
      ;;

    [3] )
      echo "You selected option 3 (The pressure wash!)"

      echo "*************************************************"
      echo "Say goodbye to those old cache files:"
      echo "rm -rf .cache"
      echo "*************************************************"
      rm -rf .cache && echo "Those old cache files are gone!"

      echo "*************************************************"
      echo "Say goodbye to those nasty old node modules:"
      echo "rm -rf node_modules"
      echo "*************************************************"
      rm -rf node_modules && echo "The node modules are gone!"

      echo "*************************************************"
      echo "We\'re installing yarn again:"
      echo "yarn"
      echo "*************************************************"
      yarn && echo "Yarn is reinstalled!"

      echo "*************************************************"
      echo "We\'re cleaning up any lingering yarn issues:"
      echo "yarn clean"
      echo "*************************************************"
      yarn clean && echo "Yarn is clean!"

      echo "*************************************************"
      echo "Just to be really clean, we\'re going to rebuild sharp:"
      echo "npm rebuild --verbose sharp"
      echo "*************************************************"
      npm rebuild --verbose sharp && echo "Sharp is rebuilt!"

      echo "*************************************************"
      echo "OK, we\'re on the final stretch. We\'re restarting yarn:"
      echo "*************************************************"
      yarn start
      ;;

    * )
      echo "*************************************************"    
      echo "It looks like you chose a invalid value."
      echo "Please re-run the script and enter 1, 2, or 3."
      echo "*************************************************"
      ;;

    esac  

else
  echo "It looks like you are not in the root of your Gatsby project where the script needs to run!"
  echo "Did you insert your own path to the docs directory at the beginning of the script?"
fi
