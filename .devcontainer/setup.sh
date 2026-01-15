#!/bin/bash
set -e

echo "Setting up Virtual Robot development environment..."

# Source SDKMAN (installed via devcontainer feature)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install BellSoft Liberica 17 Full JDK (includes JavaFX)
echo "Installing BellSoft Liberica 17 Full JDK with JavaFX..."
sdk install java 17.0.13.fx-librca || sdk use java 17.0.13.fx-librca || true
sdk default java 17.0.13.fx-librca || true

# Verify installation
echo "Java version:"
java -version

echo ""
echo "Setup complete! Java environment is ready."
echo "Java Home: $HOME/.sdkman/candidates/java/current"
echo ""
echo "To verify JavaFX is available, run: java --list-modules | grep javafx"
