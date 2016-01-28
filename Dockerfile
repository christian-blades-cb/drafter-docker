FROM christianbladescb/busybox

ADD libstdc++.so.6 /lib64/
ADD /drafter /drafter

ENTRYPOINT [ "/drafter" ]
