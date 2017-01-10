FROM kjbreil/arch-build:2017.01.09
MAINTAINER kjbreil
RUN pacman -Syu --needed --asdeps --noconfirm jshon bash-bats par2cmdline \
	python2-markdown python2-cheetah libmms libjpeg-turbo libtiff libpng \
	libxrender graphite harfbuzz freetype2 fontconfig mesa-libgl cairo \
	giflib libexif libgdiplus mono libuv c-ares libzen libmediainfo \
	http-parser nodejs semver npm systemd python2-lxml arch-install-scripts
RUN curl -s "https://raw.githubusercontent.com/oshazard/apacman/master/apacman" | bash -s -- -Syu apacman apacman-deps proot fuse --needed --asdeps --noconfirm
CMD ["apacman"]
