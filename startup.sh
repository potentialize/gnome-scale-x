# Called in ~/.profile

# Detect which gpu is running
NVIDIA_ACTIVE=$( lspci | grep "GeForce GTX 1050 Mobile" | wc -l )

case $NVIDIA_ACTIVE in
  0)
    # nvidia gpu not active; run intel script
    "$(dirname $0)/intel.sh"
    ;;
  1)
    # run nvidia script
    "$(dirname $0)/nvidia.sh"
    ;;
  *)
    echo "[$(date)] Error: GPU detection produced unexpected output: '$NVIDIA_ACTIVE'" >> error.log
    ;;
esac
