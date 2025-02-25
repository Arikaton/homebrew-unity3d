# Auto-completion for unity3d script (Zsh only)

_unity3d_completions() {
    local -a completions
    local cur prev

    cur=${words[CURRENT]}    # Current word being completed
    prev=${words[CURRENT-1]} # Previous word

    case "$prev" in
        -f)
            # Suggest installed Unity versions (Zsh-native globbing instead of ls)
            if [[ -d "$UNITY_INSTALLATION_PREFIX" ]]; then
                completions=(${UNITY_INSTALLATION_PREFIX}/*(/:t))  # List directories, remove path
            fi
            ;;
        -c)
            # Suggest common Unity CLI arguments
            completions=("-quit" "-batchmode" "-nographics" "-executeMethod")
            ;;
        *)
            # Suggest available flags
            completions=("-f" "-d" "-b" "-e" "-c" "-h")
            ;;
    esac

    compadd -V unity3d_completions -a completions
}

# Register completion function for Zsh
compdef _unity3d_completions unity3d