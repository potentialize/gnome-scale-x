# Tools to improve display setup
## Files
- `startup.sh`: run on startup (own responsibility; I added a line to `~/.profile`), detect hardware and decide what to do next
- `nvidia.sh`: called by `startup.sh` in case the nvidia gpu is deemed active
- `intel.sh`: called by `startup.sh` when the pc runs on internal graphics (when no nvidia gpu is found on pci)
- `scale.sh`: simplified api for `xrandr` scaling, e.g. called by `intel.sh`

## Detect gpu
- lshw
  - if nvidia on pci, assume nvidia
  - else assume intel
- lspci
  - same

## Useful commands
- Scripts need to have execute permissions, before you can run them: `chmod 750 file.sh`

## Notes
x.conf -> nvidia-xconfig? https://askubuntu.com/a/217772
