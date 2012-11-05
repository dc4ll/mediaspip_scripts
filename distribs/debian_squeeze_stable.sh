#!/bin/bash
#
# debian_squeeze_stable
# © 2011-2012 - kent1 (kent1@arscenic.info)
# Version 0.3.13
#
# Installation des dépendances de manière stable pour debian
#
# Mises à jour :
# Version 0.3.2 - Upgrade de FFmpeg en 0.7.1
# Version 0.3.3 - Upgrade de FFmpeg en 0.7.3
# Version 0.3.4 - Upgrade de FFmpeg2theora en 0.28
# Version 0.3.5 - Upgrade de FFmpeg en 0.7.4
# Version 0.3.6 - Upgrade de FFmpeg en 0.7.5
# Version 0.3.7 - Passage de FFmpeg en stable en version 0.7.6 et ajout de --disable-doc à sa configuration
# Version 0.3.8 - Passage de FFmpeg en stable en version 0.7.8
# Version 0.3.9 - Upgrade de FFmpeg en 0.7.10
# Version 0.3.10 - Upgrade de FFmpeg en 0.7.11
# Version 0.3.11 - Upgrade de FFmpeg en 0.7.12
# Version 0.3.12 - Upgrade de FFmpeg en 0.7.13
# Version 0.3.13 - Suppression de FFmpeg2theora

VERSION_DEBIAN_STABLE=0.3.13

# Ce script lancé tout seul ne sert à rien
# On s'arrête dès son appel
case "$0" in
	*debian_squeeze_stable.sh) 
	printf "
########################################
MediaSPIP Debian stable functions v$VERSION_DEBIAN_STABLE
########################################\n\n"
	printf "This file is only usefull for its functions"
	tput setaf 1;
	printf "
This file doesn't work standalone.
Please have a look to mediaspip_install.sh\n\n"
	tput sgr0; 
	exit 1 
	shift;;
esac

# Installation de FFMpeg
# http://www.ffmpeg.org
debian_squeeze_ffmpeg_install ()
{
	export TEXTDOMAINDIR=$CURRENT/locale
	export TEXTDOMAIN=mediaspip
	cd $SRC_INSTALL
	if [  ! -e "$SRC_INSTALL"/ffmpeg-0.7.13.tar.bz2 ];then
		echo $(eval_gettext "Info debut ffmpeg install")
		echo $(eval_gettext "Info debut ffmpeg install") 2>> $LOG >> $LOG
		echo
		wget http://ffmpeg.org/releases/ffmpeg-0.7.13.tar.bz2 2>> $LOG >> $LOG
		tar xvjf ffmpeg-0.7.13.tar.bz2 2>> $LOG >> $LOG
	elif [ ! -d ffmpeg-0.7.13 ];then
		tar xvjf ffmpeg-0.7.13.tar.bz2 2>> $LOG >> $LOG
	fi
	
	VERSION="0.7.13"
	if [ -x $(which ffmpeg) ];then
		VERSION_ACTUELLE=$(ffmpeg -version  2> /dev/null |grep ffmpeg -m 1 |awk '{print $2}')
	fi
	
	cd $SRC_INSTALL/ffmpeg-0.7.13
	
	if [ "$VERSION" = "$VERSION_ACTUELLE" ];then
		echo $(eval_gettext "Info a jour ffmpeg")
		echo $(eval_gettext "Info a jour ffmpeg") 2>> $LOG >> $LOG
	else
		make -j $NO_OF_CPUCORES clean 2>> $LOG >> $LOG
		make -j $NO_OF_CPUCORES distclean 2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation configure")
		./configure --disable-doc --disable-ffplay --disable-ffserver --enable-gpl --enable-version3 --enable-nonfree --enable-shared --enable-postproc --enable-pthreads --enable-libvpx  \
			--enable-libfaac --enable-libmp3lame --enable-libxvid --disable-encoder=vorbis  --enable-libvorbis --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libtheora --enable-libx264 --enable-libdirac --enable-librtmp --enable-libspeex --enable-libopenjpeg --enable-libgsm --enable-avfilter --enable-zlib \
			2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation make")
		make -j $NO_OF_CPUCORES 2>> $LOG >> $LOG || return 1
		apt-get -y --force-yes remove ffmpeg  2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation install")
		checkinstall --pkgname=ffmpeg --pkgversion "5:$VERSION+`date +%Y%m%d`-mediaspip" --backup=no --default 2>> $LOG >> $LOG || return 1
		ldconfig
		cd tools
		cc qt-faststart.c -o qt-faststart 2>> $LOG >> $LOG || return 1
		cp qt-faststart /usr/local/bin
	fi
	echo
	echo $(eval_gettext 'Info ffmpeg version $VERSION')
}