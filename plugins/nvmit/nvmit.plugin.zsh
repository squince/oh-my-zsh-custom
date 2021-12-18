function nvmit() {
  packageJson='./package.json'
  if [ -f $packageJson ]; then
    result=$(grep 'engines' -A 3 $packageJson | grep 'node' | sed -r 's/^[^:]*: (.*)$/\1/' | sed -r 's/"//g')
    if [ ! -z $result ]; then
      nvm install $result
    else
      echo "no engines.node section found in package.json"
    fi
  else
    echo "no package.json found"
  fi
}
