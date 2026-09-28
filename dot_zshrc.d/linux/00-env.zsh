# Add Homebrew to the environment when it is installed. Homebrew's supported
# Linux prefix is shared across distributions and is not in PATH by default.
if [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
fi

# Add Cargo to path
export PATH="$HOME/.cargo/bin:$PATH"

# Add JAVA_HOME variable to path
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export PATH=$JAVA_HOME/bin:$PATH
