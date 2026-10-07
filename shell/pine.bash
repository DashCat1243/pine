pine() {
    if [ "$1" = "project" ]; then
        local OUTPUT
        OUTPUT="$(command pine "$@" --print-dir)"

        if [ $? -ne 0 ]; then
            return 1
        fi

        cd -- "$OUTPUT"
    else
        command pine "$@"
    fi
}
