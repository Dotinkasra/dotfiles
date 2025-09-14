if status is-interactive
    # Commands to run in interactive sessions can go here
end

# path
fish_add_path /usr/bin
fish_add_path /opt/homebrew/bin 
fish_add_path /opt/homebrew/sbin
fish_add_path $HOME/bin 
fish_add_path $HOME/bin/shellscript 
fish_add_path $HOME/.local/bin 
fish_add_path /opt/homebrew/opt/mysql-client/bin
fish_add_path /opt/homebrew/mysql-client/bin
fish_add_path $HOME/bin/bypass-403

# tools
fish_add_path $HOME/bin/realesrgan-ncnn-vulkan 
fish_add_path $HOME/bin/realcugan-ncnn-vulkan 
fish_add_path $HOME/bin/dain-ncnn-vulkan 
fish_add_path $HOME/.local/share/yaskkserv2
fish_add_path -m $HOME/bin/ffmpeg/bin 

# asdf
#source /opt/homebrew/opt/asdf/libexec/asdf.fish
# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

# programming
# java
set -gx JAVA_HOME $HOME/.asdf/plugins/java/set-java-home.fish
set -gx GRADLE_HOME $HOME/bin/gradle
fish_add_path $GRADLE_HOME/bin 

# node
fish_add_path /usr/local/opt/node/bin 

# nim
fish_add_path $HOME/.nimble/bin 

# rust
fish_add_path $HOME/.cargo/bin 
fish_add_path $HOME/.cargo/env
set -gx RUSTC_WRAPPER $HOME/.cargo/bin/sccache

# go
set -gx GOROOT (go env GOROOT)
set -gx GOPATH (go env GOPATH)
fish_add_path $GOPATH/bin

# python
uv generate-shell-completion fish | source
uvx --generate-shell-completion fish | source

# env
set icloud $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/
set -gx SSLKEYLOGFILE $HOME/.ssl-key.log 
set -gx CHROME_EXECUTABLE "/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"
set GEMINI_SANDBOX "sandbox-exec"

# abbr
abbr -a real "realesrgan-ncnn-vulkan -m $HOME/bin/realesrgan-ncnn-vulkan/models -n realesrgan-x4plus-anime"
abbr -a mv "mv -iv"
abbr -a veracrypt "/Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt --text"
abbr -a L --position anywhere --set-cursor "% | less"
abbr -a yt --set-cursor "yt-dlp -f % --embed-thumbnail --add-metadata"
abbr -a nohup --set-cursor "nohup % > /dev/null 2>&1 &"
abbr -a uvv "uv venv -p (which python)"
abbr -a manl "man -M ~/bin/man"

#test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
fzf --fish | source

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
