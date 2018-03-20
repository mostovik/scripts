echo"machine github.com
login yourusername
password <token>
protocol https
" > ~/.netrc
gpg --gen-key
gpg -c ~/.netrc
curl -o /usr/bin/gitnetrc https://raw.githubusercontent.com/git/git/master/contrib/credential/netrc/git-credential-netrc

chmod +x /usr/bin/gitnetrc

git config --global credential.helper "netrc -f ~/.netrc.gpg -v"
sudo apt-get install gnupg-agent pinentry-curses -y




#agentGPG
echo "if not begin
    # Is the agent running already? Does the agent-info file exist, and if so,
    # is there a process with the pid given in the file?
    [ -f ~/.gpg-agent-info ]
    and kill -0 (cut -d : -f 2 ~/.gpg-agent-info) ^/dev/null
end
    # no, it is not running. Start it!
    gpg-agent --daemon --no-grab --write-env-file ~/.gpg-agent-info >/dev/null ^&1
end
# get the agent info from the info file, and export it so GPG can see it.
set -gx GPG_AGENT_INFO (cut -c 16- ~/.gpg-agent-info)
set -gx GPG_TTY (tty)" >> ~/.bashrc





#time
echo "# ssh support
enable-ssh-support

# Cache settings. (Caches for 12 hours)
default-cache-ttl 43200
default-cache-ttl-ssh 43200" > ~/.gnupg/gpg-agent.conf

