#compdef rtx

autoload -U is-at-least

_rtx() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_rtx_commands" \
"*::: :->rtx" \
&& ret=0
    case $state in
    (rtx)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-command-$line[1]:"
        case $line[1] in
            (activate)
_arguments "${_arguments_options[@]}" \
'-s+[Shell type to generate the script for]:SHELL:(bash fish nu xonsh zsh)' \
'--shell=[Shell type to generate the script for]:SHELL:(bash fish nu xonsh zsh)' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--status[Show "rtx\: <PLUGIN>@<VERSION>" message when changing directories]' \
'-q[noop]' \
'--quiet[noop]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::shell_type -- Shell type to generate the script for:(bash fish nu xonsh zsh)' \
&& ret=0
;;
(alias)
_arguments "${_arguments_options[@]}" \
'-p+[filter aliases by plugin]:PLUGIN: ' \
'--plugin=[filter aliases by plugin]:PLUGIN: ' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_rtx__alias_commands" \
"*::: :->alias" \
&& ret=0

    case $state in
    (alias)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-alias-command-$line[1]:"
        case $line[1] in
            (get)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':plugin -- The plugin to show the alias for:' \
':alias -- The alias to show:' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
'-p+[Show aliases for <PLUGIN>]:PLUGIN: ' \
'--plugin=[Show aliases for <PLUGIN>]:PLUGIN: ' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':plugin -- The plugin to set the alias for:' \
':alias -- The alias to set:' \
':value -- The value to set the alias to:' \
&& ret=0
;;
(unset)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':plugin -- The plugin to remove the alias from:' \
':alias -- The alias to remove:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_rtx__alias__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-alias-help-command-$line[1]:"
        case $line[1] in
            (get)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(unset)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(asdf)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help]' \
'--help[Print help]' \
'*::args -- all arguments:' \
&& ret=0
;;
(bin-paths)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(cache)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_rtx__cache_commands" \
"*::: :->cache" \
&& ret=0

    case $state in
    (cache)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-cache-command-$line[1]:"
        case $line[1] in
            (clear)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_rtx__cache__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-cache-help-command-$line[1]:"
        case $line[1] in
            (clear)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(completion)
_arguments "${_arguments_options[@]}" \
'-s+[Shell type to generate completions for]:SHELL_TYPE:(bash elvish fish powershell zsh)' \
'--shell=[Shell type to generate completions for]:SHELL_TYPE:(bash elvish fish powershell zsh)' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::shell -- Shell type to generate completions for:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(current)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::plugin -- Plugin to show versions of e.g.\: ruby, node:' \
&& ret=0
;;
(deactivate)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(direnv)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_rtx__direnv_commands" \
"*::: :->direnv" \
&& ret=0

    case $state in
    (direnv)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-direnv-command-$line[1]:"
        case $line[1] in
            (envrc)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(exec)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(activate)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_rtx__direnv__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-direnv-help-command-$line[1]:"
        case $line[1] in
            (envrc)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(exec)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(activate)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(doctor)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(env)
_arguments "${_arguments_options[@]}" \
'-s+[Shell type to generate environment variables for]:SHELL:(bash fish nu xonsh zsh)' \
'--shell=[Shell type to generate environment variables for]:SHELL:(bash fish nu xonsh zsh)' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::runtime -- Runtime version to use:' \
&& ret=0
;;
(exec)
_arguments "${_arguments_options[@]}" \
'()-c+[Command string to execute]:C:_cmdstring' \
'()--command=[Command string to execute]:C:_cmdstring' \
'--cd=[Change to this directory before executing the command]:CD:_files -/' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::runtime -- Runtime(s) to start e.g.\: node@20 python@3.10:' \
&& ret=0
;;
(global)
_arguments "${_arguments_options[@]}" \
'*--remove=[Remove the plugin(s) from ~/.tool-versions]:PLUGIN: ' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--pin[Save exact version to \`~/.tool-versions\`
e.g.\: \`rtx global --pin node@20\` will save \`node 20.0.0\` to ~/.tool-versions]' \
'--fuzzy[Save fuzzy version to \`~/.tool-versions\`
e.g.\: \`rtx global --fuzzy node@20\` will save \`node 20\` to ~/.tool-versions
this is the default behavior unless RTX_ASDF_COMPAT=1]' \
'--path[Get the path of the global config file]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::runtime -- Runtime(s) to add to .tool-versions
e.g.\: node@20
If this is a single runtime with no version, the current value of the global
.tool-versions will be displayed:' \
&& ret=0
;;
(hook-env)
_arguments "${_arguments_options[@]}" \
'-s+[Shell type to generate script for]:SHELL:(bash fish nu xonsh zsh)' \
'--shell=[Shell type to generate script for]:SHELL:(bash fish nu xonsh zsh)' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--status[Show "rtx\: <PLUGIN>@<VERSION>" message when changing directories]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(implode)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--config[Also remove config directory]' \
'--dry-run[List directories that would be removed without actually removing them]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" \
'()*-p+[Only install tool version(s) for <PLUGIN>]:PLUGIN: ' \
'()*--plugin=[Only install tool version(s) for <PLUGIN>]:PLUGIN: ' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'-f[Force reinstall even if already installed]' \
'--force[Force reinstall even if already installed]' \
'(-p --plugin -f --force)-a[Install all missing tool versions as well as all plugins for the current directory This is hidden because it'\''s now the default behavior]' \
'(-p --plugin -f --force)--all[Install all missing tool versions as well as all plugins for the current directory This is hidden because it'\''s now the default behavior]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::runtime -- Tool version(s) to install e.g.\: node@20:' \
&& ret=0
;;
(latest)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':runtime -- Runtime to get the latest version of:' \
'::asdf_version -- The version prefix to use when querying the latest version same as the first argument after the "@" used for asdf compatibility:' \
&& ret=0
;;
(local)
_arguments "${_arguments_options[@]}" \
'*--remove=[Remove the plugin(s) from .tool-versions]:PLUGIN: ' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'-p[Recurse up to find a .tool-versions file rather than using the current directory only
by default this command will only set the runtime in the current directory ("\$PWD/.tool-versions")]' \
'--parent[Recurse up to find a .tool-versions file rather than using the current directory only
by default this command will only set the runtime in the current directory ("\$PWD/.tool-versions")]' \
'--pin[Save exact version to \`.tool-versions\`
e.g.\: \`rtx local --pin node@20\` will save \`node 20.0.0\` to .tool-versions]' \
'--fuzzy[Save fuzzy version to \`.tool-versions\` e.g.\: \`rtx local --fuzzy node@20\` will save \`node 20\` to .tool-versions This is the default behavior unless RTX_ASDF_COMPAT=1]' \
'--path[Get the path of the config file]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::runtime -- Runtimes to add to .tool-versions/.rtx.toml
e.g.\: node@20
if this is a single runtime with no version,
the current value of .tool-versions/.rtx.toml will be displayed:' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
'-p+[Only show tool versions from \[PLUGIN\]]:PLUGIN: ' \
'--plugin=[Only show tool versions from \[PLUGIN\]]:PLUGIN: ' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'-c[Only show tool versions currently specified in a .tool-versions/.rtx.toml]' \
'--current[Only show tool versions currently specified in a .tool-versions/.rtx.toml]' \
'-i[Only show tool versions that are installed Hides missing ones defined in .tool-versions/.rtx.toml but not yet installed]' \
'--installed[Only show tool versions that are installed Hides missing ones defined in .tool-versions/.rtx.toml but not yet installed]' \
'(--json)--parseable[Output in an easily parseable format]' \
'--json[Output in json format]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::plugin_arg:' \
&& ret=0
;;
(ls-remote)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':plugin -- Plugin to get versions for:' \
'::prefix -- The version prefix to use when querying the latest version
same as the first argument after the "@":' \
&& ret=0
;;
(plugins)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'-a[list all available remote plugins]' \
'--all[list all available remote plugins]' \
'-c[The built-in plugins only
Normally these are not shown]' \
'--core[The built-in plugins only
Normally these are not shown]' \
'-u[show the git url for each plugin]' \
'--urls[show the git url for each plugin]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_rtx__plugins_commands" \
"*::: :->plugins" \
&& ret=0

    case $state in
    (plugins)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-plugins-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'-f[Reinstall even if plugin exists]' \
'--force[Reinstall even if plugin exists]' \
'(-f --force)-a[Install all missing plugins
This will only install plugins that have matching shorthands.
i.e.\: they don'\''t need the full git repo url]' \
'(-f --force)--all[Install all missing plugins
This will only install plugins that have matching shorthands.
i.e.\: they don'\''t need the full git repo url]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::name -- The name of the plugin to install
e.g.\: node, ruby
Can specify multiple plugins\: `rtx plugins install node ruby python`:' \
'::git_url -- The git url of the plugin:_urls' \
'*::rest:' \
&& ret=0
;;
(link)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'-f[Overwrite existing plugin]' \
'--force[Overwrite existing plugin]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':name -- The name of the plugin
e.g.\: node, ruby:' \
'::path -- The local path to the plugin
e.g.\: ./rtx-node:_files -/' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'-a[List all available remote plugins
Same as \`rtx plugins ls-remote\`]' \
'--all[List all available remote plugins
Same as \`rtx plugins ls-remote\`]' \
'-c[The built-in plugins only
Normally these are not shown]' \
'--core[The built-in plugins only
Normally these are not shown]' \
'-u[Show the git url for each plugin
e.g.\: https\://github.com/asdf-vm/asdf-node.git]' \
'--urls[Show the git url for each plugin
e.g.\: https\://github.com/asdf-vm/asdf-node.git]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(ls-remote)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'-u[Show the git url for each plugin e.g.\: https\://github.com/rtx-plugins/rtx-nodejs.git]' \
'--urls[Show the git url for each plugin e.g.\: https\://github.com/rtx-plugins/rtx-nodejs.git]' \
'--only-names[Only show the name of each plugin by default it will show a "*" next to installed plugins]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::plugin -- Plugin(s) to remove:' \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'()-a[Update all plugins]' \
'()--all[Update all plugins]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::plugin -- Plugin(s) to update:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_rtx__plugins__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-plugins-help-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(link)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls-remote)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(prune)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--dry-run[Do not actually delete anything]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::plugins -- Prune only versions from these plugins:' \
&& ret=0
;;
(reshim)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::plugin:' \
'::version:' \
&& ret=0
;;
(self-update)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(settings)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_rtx__settings_commands" \
"*::: :->settings" \
&& ret=0

    case $state in
    (settings)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-settings-command-$line[1]:"
        case $line[1] in
            (get)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':key -- The setting to show:' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':key -- The setting to set:' \
':value -- The value to set:' \
&& ret=0
;;
(unset)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':key -- The setting to remove:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_rtx__settings__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-settings-help-command-$line[1]:"
        case $line[1] in
            (get)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(unset)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(shell)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'-u[Removes a previously set version]' \
'--unset[Removes a previously set version]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::runtime -- Runtime version(s) to use:' \
&& ret=0
;;
(trust)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--untrust[No longer trust this config]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::config_file -- The config file to trust:_files' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::runtime -- Runtime(s) to remove:' \
&& ret=0
;;
(use)
_arguments "${_arguments_options[@]}" \
'*--remove=[Remove the tool(s) from config file]:TOOL: ' \
'-p+[Specify a path to a config file]:PATH:_files' \
'--path=[Specify a path to a config file]:PATH:_files' \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--pin[Save exact version to config file
e.g.\: \`rtx use --pin node@20\` will save \`node 20.0.0\` to ~/.tool-versions]' \
'--fuzzy[Save fuzzy version to config file
e.g.\: \`rtx use --fuzzy node@20\` will save \`node 20\` to ~/.tool-versions
this is the default behavior unless RTX_ASDF_COMPAT=1]' \
'-g[Use the global config file (~/.config/rtx/config.toml) instead of the local one]' \
'--global[Use the global config file (~/.config/rtx/config.toml) instead of the local one]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::tool -- Tool(s) to add to config file
e.g.\: node@20
If no version is specified, it will default to @latest:' \
&& ret=0
;;
(version)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(where)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':runtime -- Runtime(s) to look up
e.g.\: ruby@3
if "@<PREFIX>" is specified, it will show the latest installed version
that matches the prefix
otherwise, it will show the current, active installed version:' \
'::asdf_version -- the version prefix to use when querying the latest version
same as the first argument after the "@"
used for asdf compatibility:' \
&& ret=0
;;
(which)
_arguments "${_arguments_options[@]}" \
'-j+[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--jobs=[Number of plugins and runtimes to install in parallel
default\: 4]: : ' \
'--log-level=[Set the log output verbosity]:LEVEL: ' \
'(--version)--plugin[Show the plugin name instead of the path]' \
'(--plugin)--version[Show the version instead of the path]' \
'--debug[Sets log level to debug]' \
'--install-missing[Automatically install missing tools]' \
'-r[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--raw[Directly pipe stdin/stdout/stderr to user.
Sets --jobs=1]' \
'--trace[Sets log level to trace]' \
'*-v[Show installation output]' \
'*--verbose[Show installation output]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':bin_name:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_rtx__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-help-command-$line[1]:"
        case $line[1] in
            (activate)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(alias)
_arguments "${_arguments_options[@]}" \
":: :_rtx__help__alias_commands" \
"*::: :->alias" \
&& ret=0

    case $state in
    (alias)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-help-alias-command-$line[1]:"
        case $line[1] in
            (get)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(unset)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
(asdf)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(bin-paths)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(cache)
_arguments "${_arguments_options[@]}" \
":: :_rtx__help__cache_commands" \
"*::: :->cache" \
&& ret=0

    case $state in
    (cache)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-help-cache-command-$line[1]:"
        case $line[1] in
            (clear)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
(completion)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(current)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(deactivate)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(direnv)
_arguments "${_arguments_options[@]}" \
":: :_rtx__help__direnv_commands" \
"*::: :->direnv" \
&& ret=0

    case $state in
    (direnv)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-help-direnv-command-$line[1]:"
        case $line[1] in
            (envrc)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(exec)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(activate)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
(doctor)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(env)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(exec)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(global)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(hook-env)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(implode)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(latest)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(local)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls-remote)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(plugins)
_arguments "${_arguments_options[@]}" \
":: :_rtx__help__plugins_commands" \
"*::: :->plugins" \
&& ret=0

    case $state in
    (plugins)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-help-plugins-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(link)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls-remote)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
(prune)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(reshim)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(self-update)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(settings)
_arguments "${_arguments_options[@]}" \
":: :_rtx__help__settings_commands" \
"*::: :->settings" \
&& ret=0

    case $state in
    (settings)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rtx-help-settings-command-$line[1]:"
        case $line[1] in
            (get)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(unset)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
(shell)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(trust)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(use)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(version)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(where)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(which)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_rtx_commands] )) ||
_rtx_commands() {
    local commands; commands=(
'activate:Initializes rtx in the current shell' \
'alias:Manage aliases' \
'a:Manage aliases' \
'asdf:\[internal\] simulates asdf for plugins that call "asdf" internally' \
'bin-paths:List all the active runtime bin paths' \
'cache:Manage the rtx cache' \
'completion:Generate shell completions' \
'current:Shows current active and installed runtime versions' \
'deactivate:Disable rtx for current shell session' \
'direnv:Output direnv function to use rtx inside direnv' \
'doctor:Check rtx installation for possible problems.' \
'env:Exports env vars to activate rtx a single time' \
'e:Exports env vars to activate rtx a single time' \
'exec:Execute a command with runtime(s) set' \
'x:Execute a command with runtime(s) set' \
'global:Sets/gets the global runtime version(s)' \
'hook-env:\[internal\] called by activate hook to update env vars directory change' \
'implode:Removes rtx CLI and all related data' \
'install:Install a tool version' \
'i:Install a tool version' \
'latest:Gets the latest available version for a plugin' \
'local:Sets/gets tool version in local .tool-versions or .rtx.toml' \
'ls:List installed and/or currently selected tool versions' \
'list:List installed and/or currently selected tool versions' \
'ls-remote:List runtime versions available for install' \
'plugins:Manage plugins' \
'p:Manage plugins' \
'prune:Delete unused versions of tools' \
'reshim:rebuilds the shim farm' \
'self-update:Updates rtx itself' \
'settings:Manage settings' \
'shell:Sets a tool version for the current shell session' \
'trust:Marks a config file as trusted' \
'uninstall:Removes runtime versions' \
'use:Change the active version of a tool. This will install the tool if it is not already installed.' \
'u:Change the active version of a tool. This will install the tool if it is not already installed.' \
'version:Show rtx version' \
'where:Display the installation path for a runtime' \
'which:Shows the path that a bin name points to' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx commands' commands "$@"
}
(( $+functions[_rtx__activate_commands] )) ||
_rtx__activate_commands() {
    local commands; commands=()
    _describe -t commands 'rtx activate commands' commands "$@"
}
(( $+functions[_rtx__direnv__activate_commands] )) ||
_rtx__direnv__activate_commands() {
    local commands; commands=()
    _describe -t commands 'rtx direnv activate commands' commands "$@"
}
(( $+functions[_rtx__direnv__help__activate_commands] )) ||
_rtx__direnv__help__activate_commands() {
    local commands; commands=()
    _describe -t commands 'rtx direnv help activate commands' commands "$@"
}
(( $+functions[_rtx__help__activate_commands] )) ||
_rtx__help__activate_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help activate commands' commands "$@"
}
(( $+functions[_rtx__help__direnv__activate_commands] )) ||
_rtx__help__direnv__activate_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help direnv activate commands' commands "$@"
}
(( $+functions[_rtx__alias_commands] )) ||
_rtx__alias_commands() {
    local commands; commands=(
'get:Show an alias for a plugin' \
'ls:List aliases
Shows the aliases that can be specified.
These can come from user config or from plugins in \`bin/list-aliases\`.' \
'list:List aliases
Shows the aliases that can be specified.
These can come from user config or from plugins in \`bin/list-aliases\`.' \
'set:Add/update an alias for a plugin' \
'add:Add/update an alias for a plugin' \
'create:Add/update an alias for a plugin' \
'unset:Clears an alias for a plugin' \
'rm:Clears an alias for a plugin' \
'remove:Clears an alias for a plugin' \
'delete:Clears an alias for a plugin' \
'del:Clears an alias for a plugin' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx alias commands' commands "$@"
}
(( $+functions[_rtx__help__alias_commands] )) ||
_rtx__help__alias_commands() {
    local commands; commands=(
'get:Show an alias for a plugin' \
'ls:List aliases
Shows the aliases that can be specified.
These can come from user config or from plugins in \`bin/list-aliases\`.' \
'set:Add/update an alias for a plugin' \
'unset:Clears an alias for a plugin' \
    )
    _describe -t commands 'rtx help alias commands' commands "$@"
}
(( $+functions[_rtx__asdf_commands] )) ||
_rtx__asdf_commands() {
    local commands; commands=()
    _describe -t commands 'rtx asdf commands' commands "$@"
}
(( $+functions[_rtx__help__asdf_commands] )) ||
_rtx__help__asdf_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help asdf commands' commands "$@"
}
(( $+functions[_rtx__bin-paths_commands] )) ||
_rtx__bin-paths_commands() {
    local commands; commands=()
    _describe -t commands 'rtx bin-paths commands' commands "$@"
}
(( $+functions[_rtx__help__bin-paths_commands] )) ||
_rtx__help__bin-paths_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help bin-paths commands' commands "$@"
}
(( $+functions[_rtx__cache_commands] )) ||
_rtx__cache_commands() {
    local commands; commands=(
'clear:Deletes all cache files in rtx' \
'c:Deletes all cache files in rtx' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx cache commands' commands "$@"
}
(( $+functions[_rtx__help__cache_commands] )) ||
_rtx__help__cache_commands() {
    local commands; commands=(
'clear:Deletes all cache files in rtx' \
    )
    _describe -t commands 'rtx help cache commands' commands "$@"
}
(( $+functions[_rtx__cache__clear_commands] )) ||
_rtx__cache__clear_commands() {
    local commands; commands=()
    _describe -t commands 'rtx cache clear commands' commands "$@"
}
(( $+functions[_rtx__cache__help__clear_commands] )) ||
_rtx__cache__help__clear_commands() {
    local commands; commands=()
    _describe -t commands 'rtx cache help clear commands' commands "$@"
}
(( $+functions[_rtx__help__cache__clear_commands] )) ||
_rtx__help__cache__clear_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help cache clear commands' commands "$@"
}
(( $+functions[_rtx__completion_commands] )) ||
_rtx__completion_commands() {
    local commands; commands=()
    _describe -t commands 'rtx completion commands' commands "$@"
}
(( $+functions[_rtx__help__completion_commands] )) ||
_rtx__help__completion_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help completion commands' commands "$@"
}
(( $+functions[_rtx__current_commands] )) ||
_rtx__current_commands() {
    local commands; commands=()
    _describe -t commands 'rtx current commands' commands "$@"
}
(( $+functions[_rtx__help__current_commands] )) ||
_rtx__help__current_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help current commands' commands "$@"
}
(( $+functions[_rtx__deactivate_commands] )) ||
_rtx__deactivate_commands() {
    local commands; commands=()
    _describe -t commands 'rtx deactivate commands' commands "$@"
}
(( $+functions[_rtx__help__deactivate_commands] )) ||
_rtx__help__deactivate_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help deactivate commands' commands "$@"
}
(( $+functions[_rtx__direnv_commands] )) ||
_rtx__direnv_commands() {
    local commands; commands=(
'envrc:\[internal\] This is an internal command that writes an envrc file
for direnv to consume.' \
'exec:\[internal\] This is an internal command that writes an envrc file
for direnv to consume.' \
'activate:Output direnv function to use rtx inside direnv' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx direnv commands' commands "$@"
}
(( $+functions[_rtx__help__direnv_commands] )) ||
_rtx__help__direnv_commands() {
    local commands; commands=(
'envrc:\[internal\] This is an internal command that writes an envrc file
for direnv to consume.' \
'exec:\[internal\] This is an internal command that writes an envrc file
for direnv to consume.' \
'activate:Output direnv function to use rtx inside direnv' \
    )
    _describe -t commands 'rtx help direnv commands' commands "$@"
}
(( $+functions[_rtx__doctor_commands] )) ||
_rtx__doctor_commands() {
    local commands; commands=()
    _describe -t commands 'rtx doctor commands' commands "$@"
}
(( $+functions[_rtx__help__doctor_commands] )) ||
_rtx__help__doctor_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help doctor commands' commands "$@"
}
(( $+functions[_rtx__env_commands] )) ||
_rtx__env_commands() {
    local commands; commands=()
    _describe -t commands 'rtx env commands' commands "$@"
}
(( $+functions[_rtx__help__env_commands] )) ||
_rtx__help__env_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help env commands' commands "$@"
}
(( $+functions[_rtx__direnv__envrc_commands] )) ||
_rtx__direnv__envrc_commands() {
    local commands; commands=()
    _describe -t commands 'rtx direnv envrc commands' commands "$@"
}
(( $+functions[_rtx__direnv__help__envrc_commands] )) ||
_rtx__direnv__help__envrc_commands() {
    local commands; commands=()
    _describe -t commands 'rtx direnv help envrc commands' commands "$@"
}
(( $+functions[_rtx__help__direnv__envrc_commands] )) ||
_rtx__help__direnv__envrc_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help direnv envrc commands' commands "$@"
}
(( $+functions[_rtx__direnv__exec_commands] )) ||
_rtx__direnv__exec_commands() {
    local commands; commands=()
    _describe -t commands 'rtx direnv exec commands' commands "$@"
}
(( $+functions[_rtx__direnv__help__exec_commands] )) ||
_rtx__direnv__help__exec_commands() {
    local commands; commands=()
    _describe -t commands 'rtx direnv help exec commands' commands "$@"
}
(( $+functions[_rtx__exec_commands] )) ||
_rtx__exec_commands() {
    local commands; commands=()
    _describe -t commands 'rtx exec commands' commands "$@"
}
(( $+functions[_rtx__help__direnv__exec_commands] )) ||
_rtx__help__direnv__exec_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help direnv exec commands' commands "$@"
}
(( $+functions[_rtx__help__exec_commands] )) ||
_rtx__help__exec_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help exec commands' commands "$@"
}
(( $+functions[_rtx__alias__get_commands] )) ||
_rtx__alias__get_commands() {
    local commands; commands=()
    _describe -t commands 'rtx alias get commands' commands "$@"
}
(( $+functions[_rtx__alias__help__get_commands] )) ||
_rtx__alias__help__get_commands() {
    local commands; commands=()
    _describe -t commands 'rtx alias help get commands' commands "$@"
}
(( $+functions[_rtx__help__alias__get_commands] )) ||
_rtx__help__alias__get_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help alias get commands' commands "$@"
}
(( $+functions[_rtx__help__settings__get_commands] )) ||
_rtx__help__settings__get_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help settings get commands' commands "$@"
}
(( $+functions[_rtx__settings__get_commands] )) ||
_rtx__settings__get_commands() {
    local commands; commands=()
    _describe -t commands 'rtx settings get commands' commands "$@"
}
(( $+functions[_rtx__settings__help__get_commands] )) ||
_rtx__settings__help__get_commands() {
    local commands; commands=()
    _describe -t commands 'rtx settings help get commands' commands "$@"
}
(( $+functions[_rtx__global_commands] )) ||
_rtx__global_commands() {
    local commands; commands=()
    _describe -t commands 'rtx global commands' commands "$@"
}
(( $+functions[_rtx__help__global_commands] )) ||
_rtx__help__global_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help global commands' commands "$@"
}
(( $+functions[_rtx__alias__help_commands] )) ||
_rtx__alias__help_commands() {
    local commands; commands=(
'get:Show an alias for a plugin' \
'ls:List aliases
Shows the aliases that can be specified.
These can come from user config or from plugins in \`bin/list-aliases\`.' \
'set:Add/update an alias for a plugin' \
'unset:Clears an alias for a plugin' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx alias help commands' commands "$@"
}
(( $+functions[_rtx__alias__help__help_commands] )) ||
_rtx__alias__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'rtx alias help help commands' commands "$@"
}
(( $+functions[_rtx__cache__help_commands] )) ||
_rtx__cache__help_commands() {
    local commands; commands=(
'clear:Deletes all cache files in rtx' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx cache help commands' commands "$@"
}
(( $+functions[_rtx__cache__help__help_commands] )) ||
_rtx__cache__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'rtx cache help help commands' commands "$@"
}
(( $+functions[_rtx__direnv__help_commands] )) ||
_rtx__direnv__help_commands() {
    local commands; commands=(
'envrc:\[internal\] This is an internal command that writes an envrc file
for direnv to consume.' \
'exec:\[internal\] This is an internal command that writes an envrc file
for direnv to consume.' \
'activate:Output direnv function to use rtx inside direnv' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx direnv help commands' commands "$@"
}
(( $+functions[_rtx__direnv__help__help_commands] )) ||
_rtx__direnv__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'rtx direnv help help commands' commands "$@"
}
(( $+functions[_rtx__help_commands] )) ||
_rtx__help_commands() {
    local commands; commands=(
'activate:Initializes rtx in the current shell' \
'alias:Manage aliases' \
'asdf:\[internal\] simulates asdf for plugins that call "asdf" internally' \
'bin-paths:List all the active runtime bin paths' \
'cache:Manage the rtx cache' \
'completion:Generate shell completions' \
'current:Shows current active and installed runtime versions' \
'deactivate:Disable rtx for current shell session' \
'direnv:Output direnv function to use rtx inside direnv' \
'doctor:Check rtx installation for possible problems.' \
'env:Exports env vars to activate rtx a single time' \
'exec:Execute a command with runtime(s) set' \
'global:Sets/gets the global runtime version(s)' \
'hook-env:\[internal\] called by activate hook to update env vars directory change' \
'implode:Removes rtx CLI and all related data' \
'install:Install a tool version' \
'latest:Gets the latest available version for a plugin' \
'local:Sets/gets tool version in local .tool-versions or .rtx.toml' \
'ls:List installed and/or currently selected tool versions' \
'ls-remote:List runtime versions available for install' \
'plugins:Manage plugins' \
'prune:Delete unused versions of tools' \
'reshim:rebuilds the shim farm' \
'self-update:Updates rtx itself' \
'settings:Manage settings' \
'shell:Sets a tool version for the current shell session' \
'trust:Marks a config file as trusted' \
'uninstall:Removes runtime versions' \
'use:Change the active version of a tool. This will install the tool if it is not already installed.' \
'version:Show rtx version' \
'where:Display the installation path for a runtime' \
'which:Shows the path that a bin name points to' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx help commands' commands "$@"
}
(( $+functions[_rtx__help__help_commands] )) ||
_rtx__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help help commands' commands "$@"
}
(( $+functions[_rtx__plugins__help_commands] )) ||
_rtx__plugins__help_commands() {
    local commands; commands=(
'install:Install a plugin' \
'link:Symlinks a plugin into rtx' \
'ls:List installed plugins' \
'ls-remote:List all available remote plugins' \
'uninstall:Removes a plugin' \
'update:Updates a plugin to the latest version' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx plugins help commands' commands "$@"
}
(( $+functions[_rtx__plugins__help__help_commands] )) ||
_rtx__plugins__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins help help commands' commands "$@"
}
(( $+functions[_rtx__settings__help_commands] )) ||
_rtx__settings__help_commands() {
    local commands; commands=(
'get:Show a current setting' \
'ls:Show current settings' \
'set:Add/update a setting' \
'unset:Clears a setting' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx settings help commands' commands "$@"
}
(( $+functions[_rtx__settings__help__help_commands] )) ||
_rtx__settings__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'rtx settings help help commands' commands "$@"
}
(( $+functions[_rtx__help__hook-env_commands] )) ||
_rtx__help__hook-env_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help hook-env commands' commands "$@"
}
(( $+functions[_rtx__hook-env_commands] )) ||
_rtx__hook-env_commands() {
    local commands; commands=()
    _describe -t commands 'rtx hook-env commands' commands "$@"
}
(( $+functions[_rtx__help__implode_commands] )) ||
_rtx__help__implode_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help implode commands' commands "$@"
}
(( $+functions[_rtx__implode_commands] )) ||
_rtx__implode_commands() {
    local commands; commands=()
    _describe -t commands 'rtx implode commands' commands "$@"
}
(( $+functions[_rtx__help__install_commands] )) ||
_rtx__help__install_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help install commands' commands "$@"
}
(( $+functions[_rtx__help__plugins__install_commands] )) ||
_rtx__help__plugins__install_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help plugins install commands' commands "$@"
}
(( $+functions[_rtx__install_commands] )) ||
_rtx__install_commands() {
    local commands; commands=()
    _describe -t commands 'rtx install commands' commands "$@"
}
(( $+functions[_rtx__plugins__help__install_commands] )) ||
_rtx__plugins__help__install_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins help install commands' commands "$@"
}
(( $+functions[_rtx__plugins__install_commands] )) ||
_rtx__plugins__install_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins install commands' commands "$@"
}
(( $+functions[_rtx__help__latest_commands] )) ||
_rtx__help__latest_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help latest commands' commands "$@"
}
(( $+functions[_rtx__latest_commands] )) ||
_rtx__latest_commands() {
    local commands; commands=()
    _describe -t commands 'rtx latest commands' commands "$@"
}
(( $+functions[_rtx__help__plugins__link_commands] )) ||
_rtx__help__plugins__link_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help plugins link commands' commands "$@"
}
(( $+functions[_rtx__plugins__help__link_commands] )) ||
_rtx__plugins__help__link_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins help link commands' commands "$@"
}
(( $+functions[_rtx__plugins__link_commands] )) ||
_rtx__plugins__link_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins link commands' commands "$@"
}
(( $+functions[_rtx__help__local_commands] )) ||
_rtx__help__local_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help local commands' commands "$@"
}
(( $+functions[_rtx__local_commands] )) ||
_rtx__local_commands() {
    local commands; commands=()
    _describe -t commands 'rtx local commands' commands "$@"
}
(( $+functions[_rtx__alias__help__ls_commands] )) ||
_rtx__alias__help__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx alias help ls commands' commands "$@"
}
(( $+functions[_rtx__alias__ls_commands] )) ||
_rtx__alias__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx alias ls commands' commands "$@"
}
(( $+functions[_rtx__help__alias__ls_commands] )) ||
_rtx__help__alias__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help alias ls commands' commands "$@"
}
(( $+functions[_rtx__help__ls_commands] )) ||
_rtx__help__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help ls commands' commands "$@"
}
(( $+functions[_rtx__help__plugins__ls_commands] )) ||
_rtx__help__plugins__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help plugins ls commands' commands "$@"
}
(( $+functions[_rtx__help__settings__ls_commands] )) ||
_rtx__help__settings__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help settings ls commands' commands "$@"
}
(( $+functions[_rtx__ls_commands] )) ||
_rtx__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx ls commands' commands "$@"
}
(( $+functions[_rtx__plugins__help__ls_commands] )) ||
_rtx__plugins__help__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins help ls commands' commands "$@"
}
(( $+functions[_rtx__plugins__ls_commands] )) ||
_rtx__plugins__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins ls commands' commands "$@"
}
(( $+functions[_rtx__settings__help__ls_commands] )) ||
_rtx__settings__help__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx settings help ls commands' commands "$@"
}
(( $+functions[_rtx__settings__ls_commands] )) ||
_rtx__settings__ls_commands() {
    local commands; commands=()
    _describe -t commands 'rtx settings ls commands' commands "$@"
}
(( $+functions[_rtx__help__ls-remote_commands] )) ||
_rtx__help__ls-remote_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help ls-remote commands' commands "$@"
}
(( $+functions[_rtx__help__plugins__ls-remote_commands] )) ||
_rtx__help__plugins__ls-remote_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help plugins ls-remote commands' commands "$@"
}
(( $+functions[_rtx__ls-remote_commands] )) ||
_rtx__ls-remote_commands() {
    local commands; commands=()
    _describe -t commands 'rtx ls-remote commands' commands "$@"
}
(( $+functions[_rtx__plugins__help__ls-remote_commands] )) ||
_rtx__plugins__help__ls-remote_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins help ls-remote commands' commands "$@"
}
(( $+functions[_rtx__plugins__ls-remote_commands] )) ||
_rtx__plugins__ls-remote_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins ls-remote commands' commands "$@"
}
(( $+functions[_rtx__help__plugins_commands] )) ||
_rtx__help__plugins_commands() {
    local commands; commands=(
'install:Install a plugin' \
'link:Symlinks a plugin into rtx' \
'ls:List installed plugins' \
'ls-remote:List all available remote plugins' \
'uninstall:Removes a plugin' \
'update:Updates a plugin to the latest version' \
    )
    _describe -t commands 'rtx help plugins commands' commands "$@"
}
(( $+functions[_rtx__plugins_commands] )) ||
_rtx__plugins_commands() {
    local commands; commands=(
'install:Install a plugin' \
'i:Install a plugin' \
'a:Install a plugin' \
'link:Symlinks a plugin into rtx' \
'ls:List installed plugins' \
'list:List installed plugins' \
'ls-remote:List all available remote plugins' \
'list-remote:List all available remote plugins' \
'uninstall:Removes a plugin' \
'update:Updates a plugin to the latest version' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx plugins commands' commands "$@"
}
(( $+functions[_rtx__help__prune_commands] )) ||
_rtx__help__prune_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help prune commands' commands "$@"
}
(( $+functions[_rtx__prune_commands] )) ||
_rtx__prune_commands() {
    local commands; commands=()
    _describe -t commands 'rtx prune commands' commands "$@"
}
(( $+functions[_rtx__help__reshim_commands] )) ||
_rtx__help__reshim_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help reshim commands' commands "$@"
}
(( $+functions[_rtx__reshim_commands] )) ||
_rtx__reshim_commands() {
    local commands; commands=()
    _describe -t commands 'rtx reshim commands' commands "$@"
}
(( $+functions[_rtx__help__self-update_commands] )) ||
_rtx__help__self-update_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help self-update commands' commands "$@"
}
(( $+functions[_rtx__self-update_commands] )) ||
_rtx__self-update_commands() {
    local commands; commands=()
    _describe -t commands 'rtx self-update commands' commands "$@"
}
(( $+functions[_rtx__alias__help__set_commands] )) ||
_rtx__alias__help__set_commands() {
    local commands; commands=()
    _describe -t commands 'rtx alias help set commands' commands "$@"
}
(( $+functions[_rtx__alias__set_commands] )) ||
_rtx__alias__set_commands() {
    local commands; commands=()
    _describe -t commands 'rtx alias set commands' commands "$@"
}
(( $+functions[_rtx__help__alias__set_commands] )) ||
_rtx__help__alias__set_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help alias set commands' commands "$@"
}
(( $+functions[_rtx__help__settings__set_commands] )) ||
_rtx__help__settings__set_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help settings set commands' commands "$@"
}
(( $+functions[_rtx__settings__help__set_commands] )) ||
_rtx__settings__help__set_commands() {
    local commands; commands=()
    _describe -t commands 'rtx settings help set commands' commands "$@"
}
(( $+functions[_rtx__settings__set_commands] )) ||
_rtx__settings__set_commands() {
    local commands; commands=()
    _describe -t commands 'rtx settings set commands' commands "$@"
}
(( $+functions[_rtx__help__settings_commands] )) ||
_rtx__help__settings_commands() {
    local commands; commands=(
'get:Show a current setting' \
'ls:Show current settings' \
'set:Add/update a setting' \
'unset:Clears a setting' \
    )
    _describe -t commands 'rtx help settings commands' commands "$@"
}
(( $+functions[_rtx__settings_commands] )) ||
_rtx__settings_commands() {
    local commands; commands=(
'get:Show a current setting' \
'ls:Show current settings' \
'list:Show current settings' \
'set:Add/update a setting' \
'add:Add/update a setting' \
'create:Add/update a setting' \
'unset:Clears a setting' \
'rm:Clears a setting' \
'remove:Clears a setting' \
'delete:Clears a setting' \
'del:Clears a setting' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'rtx settings commands' commands "$@"
}
(( $+functions[_rtx__help__shell_commands] )) ||
_rtx__help__shell_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help shell commands' commands "$@"
}
(( $+functions[_rtx__shell_commands] )) ||
_rtx__shell_commands() {
    local commands; commands=()
    _describe -t commands 'rtx shell commands' commands "$@"
}
(( $+functions[_rtx__help__trust_commands] )) ||
_rtx__help__trust_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help trust commands' commands "$@"
}
(( $+functions[_rtx__trust_commands] )) ||
_rtx__trust_commands() {
    local commands; commands=()
    _describe -t commands 'rtx trust commands' commands "$@"
}
(( $+functions[_rtx__help__plugins__uninstall_commands] )) ||
_rtx__help__plugins__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help plugins uninstall commands' commands "$@"
}
(( $+functions[_rtx__help__uninstall_commands] )) ||
_rtx__help__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help uninstall commands' commands "$@"
}
(( $+functions[_rtx__plugins__help__uninstall_commands] )) ||
_rtx__plugins__help__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins help uninstall commands' commands "$@"
}
(( $+functions[_rtx__plugins__uninstall_commands] )) ||
_rtx__plugins__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins uninstall commands' commands "$@"
}
(( $+functions[_rtx__uninstall_commands] )) ||
_rtx__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'rtx uninstall commands' commands "$@"
}
(( $+functions[_rtx__alias__help__unset_commands] )) ||
_rtx__alias__help__unset_commands() {
    local commands; commands=()
    _describe -t commands 'rtx alias help unset commands' commands "$@"
}
(( $+functions[_rtx__alias__unset_commands] )) ||
_rtx__alias__unset_commands() {
    local commands; commands=()
    _describe -t commands 'rtx alias unset commands' commands "$@"
}
(( $+functions[_rtx__help__alias__unset_commands] )) ||
_rtx__help__alias__unset_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help alias unset commands' commands "$@"
}
(( $+functions[_rtx__help__settings__unset_commands] )) ||
_rtx__help__settings__unset_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help settings unset commands' commands "$@"
}
(( $+functions[_rtx__settings__help__unset_commands] )) ||
_rtx__settings__help__unset_commands() {
    local commands; commands=()
    _describe -t commands 'rtx settings help unset commands' commands "$@"
}
(( $+functions[_rtx__settings__unset_commands] )) ||
_rtx__settings__unset_commands() {
    local commands; commands=()
    _describe -t commands 'rtx settings unset commands' commands "$@"
}
(( $+functions[_rtx__help__plugins__update_commands] )) ||
_rtx__help__plugins__update_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help plugins update commands' commands "$@"
}
(( $+functions[_rtx__plugins__help__update_commands] )) ||
_rtx__plugins__help__update_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins help update commands' commands "$@"
}
(( $+functions[_rtx__plugins__update_commands] )) ||
_rtx__plugins__update_commands() {
    local commands; commands=()
    _describe -t commands 'rtx plugins update commands' commands "$@"
}
(( $+functions[_rtx__help__use_commands] )) ||
_rtx__help__use_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help use commands' commands "$@"
}
(( $+functions[_rtx__use_commands] )) ||
_rtx__use_commands() {
    local commands; commands=()
    _describe -t commands 'rtx use commands' commands "$@"
}
(( $+functions[_rtx__help__version_commands] )) ||
_rtx__help__version_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help version commands' commands "$@"
}
(( $+functions[_rtx__version_commands] )) ||
_rtx__version_commands() {
    local commands; commands=()
    _describe -t commands 'rtx version commands' commands "$@"
}
(( $+functions[_rtx__help__where_commands] )) ||
_rtx__help__where_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help where commands' commands "$@"
}
(( $+functions[_rtx__where_commands] )) ||
_rtx__where_commands() {
    local commands; commands=()
    _describe -t commands 'rtx where commands' commands "$@"
}
(( $+functions[_rtx__help__which_commands] )) ||
_rtx__help__which_commands() {
    local commands; commands=()
    _describe -t commands 'rtx help which commands' commands "$@"
}
(( $+functions[_rtx__which_commands] )) ||
_rtx__which_commands() {
    local commands; commands=()
    _describe -t commands 'rtx which commands' commands "$@"
}

if [ "$funcstack[1]" = "_rtx" ]; then
    _rtx "$@"
else
    compdef _rtx rtx
fi

