if [[ $(cat $dir/.version) != $(curl https://raw.githubusercontent.com/shannuu/numericalpasslistgenerator/main/.version -s) ]]; then
    echo "[*] New version of NUMERICALPASSLISTGENERATOR found"
    echo
    echo "[*] Auto installing NUMERICALPASSLISTGENERATOR"
    cd
    rm -rf numericalpasslistgenerator
    git clone https://github.com/shannuu/numericalpasslistgenerator > /dev/null 2>&1
    echo "[*] New version installed, restart NUMERICALPASSLISTGENERATOR to apply changes"
fi