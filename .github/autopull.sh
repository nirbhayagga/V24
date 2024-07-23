#!/usr/bin/env bash
config_folder=~/printer_data/config
klipper_folder=~/klipper
moonraker_folder=~/moonraker
mainsail_folder=~/mainsail

branch=main

pull_config(){
  cd $config_folder
  git status
  git pull origin $branch 
  git status
  
}

pull_config