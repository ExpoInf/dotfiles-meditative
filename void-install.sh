set -e

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
    echo "installing"
    ;;

  [Ee]xit)
    exit 1
    ;;

  *)
    echo "Unknow command please try again"
    ;;
esac
