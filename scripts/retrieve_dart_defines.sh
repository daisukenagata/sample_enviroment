# Type a script or drag a script file from your workspace to insert its path.

function entry_decode() { echo "${*}" | base64 --decode; }

IFS=',' read -r -a define_items <<< "$DART_DEFINES"


for index in "${!define_items[@]}"
do
    define_items[$index]=$(entry_decode "${define_items[$index]}");
done

printf "%s\n" "${define_items[@]}"|grep '^DEFINEEXAMPLE_' > /Users/nagatadaisuke/sample_enviroment/ios/Flutter/Defineexample.xcconfig

/Users/nagatadaisuke/Desktop/scripts
