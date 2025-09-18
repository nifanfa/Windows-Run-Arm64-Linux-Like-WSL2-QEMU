# Windows-Run-Arm64-Linux-Like-WSL2-QEMU
QEMU is required. You can get it from: https://qemu.weilnetz.de/w64/qemu-w64-setup-20250819.exe  
You can download a cloudimg from here(ubuntu 18.04 aarch64): https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-arm64.img  
Then drag the img to the qemu-aarch64.bat after it boots. the default ssh password is: ```asdfqwer```, the default ssh port is ```30022``` but you have to log in manually once in cmd prompt to make the ssh server update the password.  
As the cross platform simulation is quite slow, i recommend you use Alpine Linux: https://dl-cdn.alpinelinux.org/alpine/v3.22/releases/cloud/generic_alpine-3.22.1-aarch64-uefi-cloudinit-r0.qcow2  
You may use qemu-img to resize the img due to the default cloudimg root partition size is very low.  
This project is for those who need to compile cross-platform applications.

## Enjoy!
<img width="1483" height="792" alt="QQ_1758177257301" src="https://github.com/user-attachments/assets/53564952-c49a-46e7-90f3-3874c3841a53" />
