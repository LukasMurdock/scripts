#!/bin/zsh


while getopts p:a:f: flag
do
    case "${flag}" in
        p) profile=${OPTARG};;
    esac
done

echo "Profile: $profile";

if [ $profile = "virra" ] ; then
URLS=(
"https://sentry.io/organizations/virra/issues/"
"https://app.logrocket.com/okwckd/virra-front-end/"
"https://ahrefs.com/"
"https://search.google.com/u/1/search-console?resource_id=sc-domain%3Avirramarketing.com"
"https://oribi.io/"
)
fi


if [ $profile = "blog" ] ; then
URLS=(
"http://localhost:4000/notes/"
)
fi


printf '%s\n' "${URLS[@]}"

open -na "Google Chrome" --args --new-window ${URLS[@]}
