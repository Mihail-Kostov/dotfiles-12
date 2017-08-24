# note: this file is meant to be sourced, not executed

load_secrets() {
  local my_secrets=$(cd $GIT_ROOT && cd .. && readlink -f secrets)
  if [[ ! -d $my_secrets ]]; then
    echo "dir $my_secrets does not exist. aborting."
    return 0
  fi

  echo "secrets $my_secrets detected. sourcing"
  source $my_secrets/secrets.zsh
}

unamestr=$(uname -a)
if [[ "$unamestr" == *"Linux"* ]] && [[ $unamestr == *"ARCH"* ]]; then

  if [[ -n ${1+x} ]] && [[ "$1" == "setup" ]]; then
    source ~/.options/arch/setup.zsh
    load_secrets
  else
    source ~/.options/arch/arch.zsh
  fi

elif [[ "$unamestr" == *"Darwin"*  ]]; then
  source ~/.options/osx/osx.zsh $1
fi

