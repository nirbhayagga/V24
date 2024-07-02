#!/bin/bash

#######################################################################
## NOTE: modified from https://github.com/EricZimmerman              ##
#######################################################################

config_folder=~/printer_data/config

### Path to your Klipper folder, by default that is '~/klipper'
klipper_folder=~/klipper

### Path to your Moonraker folder, by default that is '~/moonraker'
moonraker_folder=~/moonraker

### Path to your Mainsail folder, by default that is '~/mainsail'
mainsail_folder=~/mainsail

### The branch of the repository that you want to save your config
### By default that is 'main'
branch=main

#Function Def
grab_version(){
  if [ ! -z "$klipper_folder" ]; then
    klipper_commit=$(git -C $klipper_folder describe --always --tags --long | awk '{gsub(/^ +| +$/,"")} {print $0}')
    m1="Klipper version: $klipper_commit"
  fi
  if [ ! -z "$moonraker_folder" ]; then
    moonraker_commit=$(git -C $moonraker_folder describe --always --tags --long | awk '{gsub(/^ +| +$/,"")} {print $0}')
    m2="Moonraker version: $moonraker_commit"
  fi
  if [ ! -z "$mainsail_folder" ]; then
    mainsail_ver=$(head -n 1 $mainsail_folder/.version)
    m3="Mainsail version: $mainsail_ver"
  fi
}

push_config(){
  cd $config_folder
  git pull origin $branch --no-rebase
  git add .
  current_date=$(date +"%Y-%m-%d %T")
  git commit -m "Autocommit from $current_date" -m "$m1" -m "$m2" -m "$m3"
  git push origin $branch
}

grab_version
push_config
