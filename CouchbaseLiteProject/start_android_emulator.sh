

# usage: pass in the name of the avd, eg:
# ./start_android_emulator 3.7WVGA
# you can get the list of avd names by running "android list avd"

# make sure avd name was passed in
die () {
    echo >&2 "$@"
    exit 1
}
[ "$#" -eq 1 ] || die "1 argument required, $# provided"

# start emulator
emulator64-arm -avd $* -netspeed full -netdelay none
