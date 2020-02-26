```
go env -w GOPRIVATE=my-repo-host

cat $HOME/.gitconfig
[url "ssh://git@my-repo-host/"]
    insteadOf = https://my-repo-host/
[url "https://:x-oauth-basic@my-repo-host/"]
    insteadOf = https://github.com/
```