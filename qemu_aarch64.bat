@echo off
if "%~1"=="" (
    echo Please drag arm64 uefi cloudinit linux image to this batch file.
) else (
    echo Select image: %~1
    echo Default SSH password is: asdfqwer
    echo SSH port is 30022
    timeout 5
    "C:\Program Files\qemu\qemu-system-aarch64.exe" -m 1024 -smp 8 -cpu cortex-a57 -M virt -nographic -drive if=none,file=%~1,id=hd0 -drive file=user-data.img,format=raw,id=cloud -device virtio-blk-device,drive=hd0 -net user,hostfwd=tcp::30022-:22 -net nic -serial mon:stdio -bios QEMU_EFI.fd
)
pause