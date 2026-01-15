#!/bin/bash
set -e

echo "Setting up Virtual Robot development environment..."

# Source SDKMAN (installed via devcontainer feature)
export SDKMAN_DIR="/usr/local/sdkman"
[[ -s "/usr/local/sdkman/bin/sdkman-init.sh" ]] && source "/usr/local/sdkman/bin/sdkman-init.sh"

# Install BellSoft Liberica 17 Full JDK (includes JavaFX)
echo "Installing BellSoft Liberica 17 Full JDK with JavaFX..."
sdk install java 17.0.13.fx-librca || sdk use java 17.0.13.fx-librca 
echo "n" | sdk default java 17.0.13.fx-librca 

# Verify installation
echo "Java version:"
java -version

echo ""
echo "Setup complete! Java environment is ready."
echo "Java Home: /usr/local/sdkman/candidates/java/current"
echo ""
echo "To verify JavaFX is available, run: java --list-modules | grep javafx"
