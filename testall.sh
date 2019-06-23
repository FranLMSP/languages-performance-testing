mainf=$pwd
for d in $(find . -path ./.git -prune -o -type d)
do
    if test -a "$d/test.sh"
    then
        (cd $d && exec ./test.sh)
    fi
done
