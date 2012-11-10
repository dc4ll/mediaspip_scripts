#!/bin/bash
#
# debian_wheezy_common
# © 2011-2012 - kent1 (kent1@arscenic.info)
# Version 0.3.15
#
# Installation des dépendances de manière stable pour debian
#
# Mise à jour 
# Version 0.3.3 : upgrade de libvpx en 0.9.7-p1
# Version 0.3.4 : upgrade de MediaInfo en 0.7.48
# Version 0.3.5 : 
# -* retrait de mediainfo d'apt-get car on l'installe manuellement
# -* ajout de libboost-dev à apt-get pour installer flvtool++ 
# -* installation de flvtool++ en version 1.2.1
# Version 0.3.6 : upgrade de MediaInfo en 0.7.49
# Version 0.3.7 : upgrade de MediaInfo en 0.7.50
# Version 0.3.8 : 
# -* upgrade de MediaInfo en 0.7.51
# -* installation de Yasm en 1.2.0 pour installer la dernière version de x264
# Version 0.3.9 : changement de l'URL de flvtool++
# Version 0.3.10 : upgrade de MediaInfo en 0.7.52
# Version 0.3.11 : upgrade de MediaInfo en 0.7.53
# Version 0.3.12 : suppression de ffmpeg-php
# Version 0.3.14 : 
# -* upgrade de MediaInfo en 0.7.57
# -* upgrade de libvpx en 1.1.0
# Version 0.3.15 : upgrade de MediaInfo en 0.7.58
# Version 0.4.0 : 
# -* On vire du code dont on n'a plus besoin
# -* installation de libopus 1.0.1
# -* installation de libmodplug
# -* installation de libtwolame
# -* on merge le fichier _stable : on installe ffmpeg depuis ce fichier
# - on compile FFmpeg en version 1.0 avec :
# -* libass
# -* libopus
# -* libmodplug
# -* libtwolame
# -* upgrade de MediaInfo en 0.7.61

VERSION_DEBIAN_COMMON=0.3.15

# Ce script lancé tout seul ne sert à rien
# On s'arrête dès son appel

case "$0" in
	*debian_wheezy_common.sh) 
	printf "
########################################
MediaSPIP Debian common functions v$VERSION_DEBIAN_COMMON
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

# Installation de flvtool++
debian_wheezy_flvtool_plus_install()
{
	export TEXTDOMAINDIR=$CURRENT/locale
	export TEXTDOMAIN=mediaspip
	
	FLVTOOLPLUS=$(which flvtool++)
	if [ ! -z "$FLVTOOLPLUS" ]; then
		FLVTOOLPLUSVERSION=$(flvtool++ |awk '/^flvtool++/ { print $2 }') 2>> $LOG >> $LOG
	fi
	
	VERSION="1.2.1"
	if [ "$FLVTOOLPLUSVERSION" = "$VERSION" ]; then
		echo $(eval_gettext 'Info a jour flvtool++ $VERSION')
		echo $(eval_gettext 'Info a jour flvtool++ $VERSION') 2>> $LOG >> $LOG
	else
		echo $(eval_gettext "Info debut flvtool++")
		echo $(eval_gettext "Info debut flvtool++") 2>> $LOG >> $LOG
		cd $SRC_INSTALL
		if [ ! -d flvtool++-1.2.1 ];then
			mkdir flvtool++-1.2.1 2>> $LOG >> $LOG
		fi
		cd flvtool++-1.2.1
		if [ ! -e flvtool++-1.2.1.tar.gz ];then
			wget http://files.mediaspip.net/binaires/flvtool++-1.2.1.tar.gz 2>> $LOG >> $LOG  || return 1
		fi
		tar xvzf flvtool++-1.2.1.tar.gz 2>> $LOG >> $LOG
		scons 2>> $LOG >> $LOG
		cp flvtool++ /usr/local/bin
		echo $(eval_gettext "End flvtool++")
	fi
	echo
}

# Installation de libopus
# http://www.opus-codec.org
debian_wheezy_libopus_install()
{
	export TEXTDOMAINDIR=$CURRENT/locale
	export TEXTDOMAIN=mediaspip
	LIBOPUSVERSION=$(pkg-config --modversion opus 2>> $LOG)
	cd $SRC_INSTALL
	VERSION="1.0.1"
	if [ "$LIBOPUSVERSION" = "$VERSION" ]; then
		echo $(eval_gettext 'Info a jour libopus $VERSION')
		echo $(eval_gettext 'Info a jour libopus $VERSION') 2>> $LOG >> $LOG
	else
		if [ ! -e "$SRC_INSTALL"/opus-1.0.1.tar.gz ];then
			echo $(eval_gettext 'Info debut libopus install $VERSION')
			echo $(eval_gettext 'Info debut libopus install $VERSION') 2>> $LOG >> $LOG
			wget http://downloads.xiph.org/releases/opus/opus-1.0.1.tar.gz 2>> $LOG >> $LOG
			tar xvzf opus-1.0.1.tar.gz  2>> $LOG >> $LOG
		else
			echo $(eval_gettext 'Info debut libopus update $VERSION')
			echo $(eval_gettext 'Info debut libopus update $VERSION') 2>> $LOG >> $LOG
		fi
		cd opus-1.0.1
		echo $(eval_gettext "Info compilation configure")
		./configure 2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation make")
		make -j $NO_OF_CPUCORES 2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation install")
		checkinstall --fstrans=no --install=yes --pkgname=libopus-dev --pkgversion "$VERSION+mediaspip" --backup=no --default 2>> $LOG >> $LOG
		echo $(eval_gettext "End libtheora")
	fi
	echo
}

# Installation de FFMpeg
# http://www.ffmpeg.org
debian_wheezy_ffmpeg_install ()
{
	export TEXTDOMAINDIR=$CURRENT/locale
	export TEXTDOMAIN=mediaspip
	cd $SRC_INSTALL
	if [  ! -e "$SRC_INSTALL"/$FFMPEG_FICHIER ];then
		echo $(eval_gettext "Info debut ffmpeg install")
		echo $(eval_gettext "Info debut ffmpeg install") 2>> $LOG >> $LOG
		echo
		wget $FFMPEG_URL 2>> $LOG >> $LOG
		tar xvjf $FFMPEG_FICHIER 2>> $LOG >> $LOG
	elif [ ! -d $FFMPEG_PATH ];then
		tar xvjf $FFMPEG_FICHIER 2>> $LOG >> $LOG
	fi

	if [ -x $(which ffmpeg) ];then
		VERSION_ACTUELLE=$(ffmpeg -version  2> /dev/null |grep ffmpeg -m 1 |awk '{print $2}')
	fi
	if [ "$VERSION_ACTUELLE" = "version" ];then
		VERSION_ACTUELLE=$(ffmpeg -version  2> /dev/null |grep ffmpeg -m 1 |awk '{print $3}')
	fi
	
	cd $SRC_INSTALL/$FFMPEG_PATH
	
	if [ "$FFMPEG_VERSION" = "$VERSION_ACTUELLE" ];then
		echo $(eval_gettext "Info a jour ffmpeg")
		echo $(eval_gettext "Info a jour ffmpeg") 2>> $LOG >> $LOG
	else
		make -j $NO_OF_CPUCORES clean 2>> $LOG >> $LOG
		make -j $NO_OF_CPUCORES distclean 2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation configure")
		./configure --disable-doc --disable-ffplay --disable-ffserver --enable-gpl --enable-version3 --enable-nonfree --enable-shared --enable-postproc --enable-pthreads --enable-libvpx\
			--enable-libfaac --enable-libmp3lame --enable-libxvid --disable-encoder=vorbis  --enable-libvorbis --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libtheora --enable-libx264\
			--enable-libopus --enable-libmodplug --enable-librtmp --enable-libspeex --enable-libopenjpeg --enable-libgsm --enable-avfilter --enable-zlib --enable-libass --enable-libtwolame 2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation make")
		make -j $NO_OF_CPUCORES 2>> $LOG >> $LOG || return 1
		apt-get -y --force-yes remove ffmpeg  2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation install")
		checkinstall --pkgname=ffmpeg --pkgversion "5:$FFMPEG_VERSION+`date +%Y%m%d`-mediaspip" --backup=no --default 2>> $LOG >> $LOG || return 1
		ldconfig
		cd tools
		cc qt-faststart.c -o qt-faststart 2>> $LOG >> $LOG || return 1
		cp qt-faststart /usr/local/bin
	fi
	echo
	echo $(eval_gettext 'Info ffmpeg version $FFMPEG_VERSION')
}

# Installation de diverses dépendances
# Pour Debian wheezy
debian_wheezy_dep_install()
{
	export TEXTDOMAINDIR=$CURRENT/locale
	export TEXTDOMAIN=mediaspip
	
	DEBIANMULTIMEDIA=$(grep "deb-multimedia" /etc/apt/sources.list |grep wheezy) 2>> $LOG >> $LOG
	if [ -z "$DEBIANMULTIMEDIA" ];then
		echo $(eval_gettext 'Info apt debian-multimedia question auto')
		echo -n "$QUESTION_VALID"
		read REPLY
		[ "$REPLY" = "y" ] || [ "$REPLY" = "o" ] || [ -z "$REPLY" ] || die $(eval_gettext 'Erreur apt debian-multimedia')
			echo
			echo $(eval_gettext 'Info apt debian-multimedia copie')
			echo "deb http://www.deb-multimedia.org wheezy main non-free" >> /etc/apt/sources.list 2>> $LOG
			echo $(eval_gettext 'Info apt debian-multimedia installation cle')
			apt-get -y --force-yes update 2>> $LOG >> $LOG || return 1
			apt-get -y --force-yes install deb-multimedia-keyring 2>> $LOG >> $LOG || return 1
			echo $(eval_gettext 'End debian-multimedia')
			echo
	fi
	echo $(eval_gettext "Info apt maj base")
	echo $(eval_gettext "Info apt maj base") 2>> $LOG >> $LOG
	apt-get -y --force-yes update 2>> $LOG >> $LOG || return 1
	echo $(eval_gettext "Info apt maj paquets")
	echo $(eval_gettext "Info apt maj paquets") 2>> $LOG >> $LOG
	export DEBIAN_FRONTEND=noninteractive
	apt-get -q -y --force-yes install build-essential subversion git-core checkinstall libcxxtools-dev yasm scons libboost-dev zlib1g-dev unzip \
		apache2.2-common mysql-server php5-dev php5-mysql php5-imagick php-pear php5-curl php5-gd libapache2-mod-php5 texi2html \
		libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libvpx-dev libtheora-dev librtmp-dev libfaac-dev libfaad-dev libmodplug-dev libgsm1-dev libopenjpeg-dev libxvidcore-dev libschroedinger-dev libspeex-dev libvorbis-dev libass-dev libtwolame-dev \
		flac vorbis-tools xpdf poppler-utils catdoc \
		2>> $LOG >> $LOG || return 1
	apt-get clean 2>> $LOG >> $LOG || return 1
	echo
	
	verif_svn_protocole || return 1
	
	debian_wheezy_libopus_install || return 1
	
	debian_wheezy_flvtool_plus_install || return 1
	
	media_info_install || return 1
	
	cd $CURRENT
	return 0
}

# Préconfiguration basique d'Apache
debian_wheezy_apache_install ()
{
	export TEXTDOMAINDIR=$CURRENT/locale
	export TEXTDOMAIN=mediaspip
	echo $(eval_gettext "Info apache mod headers")
	echo $(eval_gettext "Info apache mod headers") 2>> $LOG >> $LOG
	a2enmod headers 2>> $LOG >> $LOG || return 1
	echo
	
	echo $(eval_gettext "Info apache mod rewrite")
	echo $(eval_gettext "Info apache mod rewrite") 2>> $LOG >> $LOG
	a2enmod rewrite 2>> $LOG >> $LOG || return 1
	echo
	
	echo $(eval_gettext "Info apache mod deflate")
	echo $(eval_gettext "Info apache mod deflate") 2>> $LOG >> $LOG
	a2enmod deflate 2>> $LOG >> $LOG || return 1
	echo $(eval_gettext "Info apache mod deflate fichier")
	echo $(eval_gettext "Info apache mod deflate fichier") 2>> $LOG >> $LOG
	cp ./configs/apache/deflate.conf /etc/apache2/conf.d/ 2>> $LOG >> $LOG || return 1
	echo
	
	echo $(eval_gettext "Info apache mod expires")
	echo $(eval_gettext "Info apache mod expires") 2>> $LOG >> $LOG
	a2enmod expires 2>> $LOG >> $LOG || return 1
	echo $(eval_gettext "Info apache mod expires fichier")
	echo $(eval_gettext "Info apache mod expires fichier") 2>> $LOG >> $LOG
	cp ./configs/apache/expires.conf /etc/apache2/conf.d/ 2>> $LOG >> $LOG || return 1
	echo
	
	echo $(eval_gettext "Info apache mime fichier")
	echo $(eval_gettext "Info apache mime fichier") 2>> $LOG >> $LOG
	cp ./configs/apache/mediaspip_mime.conf /etc/apache2/conf.d/ 2>> $LOG >> $LOG || return 1
	echo
	
	echo $(eval_gettext 'Info php max_upload $PHP_UPLOAD_SIZE')
	echo "file_uploads = On" > /etc/php5/conf.d/mediaspip_upload.ini
	echo "upload_max_filesize = $PHP_UPLOAD_SIZE" >> /etc/php5/conf.d/mediaspip_upload.ini
	echo "post_max_size = $PHP_UPLOAD_SIZE" >> /etc/php5/conf.d/mediaspip_upload.ini
	echo "suhosin.get.max_value_length = 1024" >> /etc/php5/conf.d/mediaspip_upload.ini
	echo
	
	echo $(eval_gettext "Info apache reload")
	echo $(eval_gettext "Info apache reload") 2>> $LOG >> $LOG
	/etc/init.d/apache2 force-reload 2>> $LOG >> $LOG || return 1
	
	echo
}

# Installation de x264
# http://www.videolan.org/developers/x264.html
debian_wheezy_x264_install ()
{
	export TEXTDOMAINDIR=$CURRENT/locale
	export TEXTDOMAIN=mediaspip
	cd "$SRC_INSTALL"
	
	# Si on a déjà les sources, on ne fait que les mettre à jour
	if [ -d $SRC_INSTALL/x264/.git ];then
		echo $(eval_gettext "Info debut x264 update")
		echo
		echo $(eval_gettext "Info debut x264 update") 2>> $LOG >> $LOG
		cd $SRC_INSTALL/x264
		git pull 2>> $LOG >> $LOG || return 1
		NEWREVISION=$(git_log ./ | awk '/^== Short Revision:/ { print $4 }') 2>> $LOG >> $LOG
	# Sinon on les récupère
	else
		echo $(eval_gettext "Info debut x264 install")
		echo
		echo $(eval_gettext "Info debut x264 install") 2>> $LOG >> $LOG
		git clone git://git.videolan.org/x264.git 2>> $LOG >> $LOG || return 1
		cd $SRC_INSTALL/x264
		NEWREVISION=$(git_log ./ | awk '/^== Short Revision:/ { print $4 }') 2>> $LOG >> $LOG
	fi
	
	REVISION=$(pkg-config --modversion x264  2>> $LOG | awk '{ print $2 }')
	if [ "$REVISION" = "$NEWREVISION" ]; then
		echo $(eval_gettext "Info a jour x264")
		echo $(eval_gettext "Info a jour x264") 2>> $LOG >> $LOG
	else
		make -j $NO_OF_CPUCORES distclean 2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation configure")
		./configure --enable-shared 2>> $LOG >> $LOG || return 1
		echo $(eval_gettext "Info compilation make")
		make -j $NO_OF_CPUCORES 2>> $LOG >> $LOG || return 1
		apt-get -y --force-yes remove x264 2>> $LOG >> $LOG
		echo $(eval_gettext "Info compilation install")
		VERSION=$(sh version.sh | awk '/^#define X264_POINTVER/ { print $3 }' |awk -F '"' '{print $2}')
		checkinstall --pkgname=x264 --pkgversion "3:$VERSION+git$NEWREVISION+mediaspip" --backup=no --default 2>> $LOG >> $LOG || return 1
	fi
}