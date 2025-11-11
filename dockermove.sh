#!/usr/bin/env bash
set -e

# Load utility functions
source "$(dirname "$0")/scripts/utils.sh"

print_header "🚀 Docker Relocation Automation Started"

run_step "Detecting Package Manager" "scripts/00-check-package-manager.sh"
run_step "Installing or Updating Docker" "scripts/01-install-docker.sh"
run_step "Stopping Docker Daemon" "scripts/02-stop-docker.sh"
run_step "Clearing Old Docker Data" "scripts/03-clear-old-docker.sh"
run_step "Setting Up New Docker Root" "scripts/04-setup-new-root.sh"
run_step "Fixing Permissions" "scripts/05-permissions.sh"
run_step "Adding User to Docker Group" "scripts/06-enable-docker-user.sh"
run_step "Restarting and Verifying" "scripts/07-restart-verify.sh"

print_success "✅ Docker has been successfully relocated to home directory!"
