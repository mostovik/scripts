curl -o git-credential-netrc https://raw.githubusercontent.com/git/git/master/contrib/credential/netrc/git-credential-netrc
chmod +x git-credential-netrc
mv git-credential-netrc /bin

git config --global credential.helper "netrc -f ~/.netrc.gpg -v"
git config credential.helper 'cache --timeout=28800'

echo "# Invoke GnuPG-Agent the first time we login.
# Does `~/.gpg-agent-info' exist and points to gpg-agent process accepting signals?
if test -f $HOME/.gpg-agent-info && \
    kill -0 `cut -d: -f 2 $HOME/.gpg-agent-info` 2>/dev/null; then
    GPG_AGENT_INFO=`cat $HOME/.gpg-agent-info | cut -c 16-`
else
    # No, gpg-agent not available; start gpg-agent
    eval `gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info`
fi
export GPG_TTY=`tty`
export GPG_AGENT_INFO" >> ~/.bashrc