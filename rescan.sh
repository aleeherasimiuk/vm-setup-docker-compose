sudo dd iflag=direct if=/dev/oracleoci/oraclevdb of=/dev/null count=1
echo "1" | sudo tee /sys/class/block/`readlink /dev/oracleoci/oraclevdb | cut -d'/' -f 2`/device/rescan
