cd Docker/Docker_to_build_kernel_and_uboot/mark
docker run -it -e USER=root  --privileged=true --entrypoint=/bin/bash -v /media/mark/projects/T3plus/:/home/tugy/develop/nano_t3_plus/s5pxx18-android-7/ -t ubuntu-bionic:NanoPC_T3
ls -l
cd ..
cd ..
cd ..

