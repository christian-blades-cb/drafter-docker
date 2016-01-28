FROM apiaryio/base-dev-cpp:1.0.0

RUN locale-gen en_US.UTF-8 && echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale && dpkg-reconfigure locales

ADD build_and_export.sh /

RUN chmod +x /build_and_export.sh

VOLUME /out /drafter
CMD [ "/build_and_export.sh" ]
