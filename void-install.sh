
echo "This is the Meditative Void installation script"
echo ""
echo "Options: "
echo "about --- info on this install"
echo "install --- run this script"
echo "exit --- stop this script"
read command
echo "$command"

case "$command" in
  [Aa]bout)
    echo "info"
    ;;

  [Ii]nstall)
    sudo xbps-install kde-plasma
    sudo xbps-install kde-baseapps

    ln -s /etc/sv/dbus /var/service
    ln -s /etc/sv/sddm /var/service

    sudo xbps-install fastfetch
    sudo xbps-install curl
    sudo xbps-install git

    curl -OL "https://www.jetbrains.com/toolbox-app/" --output "jetbrains-toolbox.tar.gz"

    git clone --filter=blob:none --no-checkout --depth 1 <https://github.com/ExpoInf/dotfiles-meditative>
    git sparse-checkout set <dotfiles/fastfetch/config.jsonc> <dotfiles/starship.toml>
    ;;

  [Ee]xit)
    exit 1
    ;;

  *)
    echo "Unknow command please try again"
    ;;
esac
