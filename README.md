## Zip it

zip -r -0 nmap_static_aarch64.zip . -x ".*" -x "__MACOSX" -x "README.md" 

## Run it

nmap --system-dns --datadir=/data/adb/modules/nmap_static_aarch64/system/share/nmap <commands>