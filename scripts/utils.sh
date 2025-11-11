#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

print_header() {
  echo -e "\n${CYAN}$1${NC}\n"
}

print_success() {
  echo -e "${GREEN}$1${NC}\n"
}

print_warning() {
  echo -e "${YELLOW}$1${NC}\n"
}

print_error() {
  echo -e "${RED}$1${NC}\n"
}

run_step() {
  local msg="$1"
  local script="$2"

  print_header "🔹 $msg"
  bash "$script"
}
