#!/bin/bash
#
# mediaspip_spip_installation.sh
# © 2011 - kent1 (kent1@arscenic.info)
# Version 0.2
#
# Ce script installe MediaSPIP
# - SPIP
# - Les extensions obligatoires au bon fonctionnement
# - Les plugins compatibles si configuré comme tel

# Fonction d'installation de SPIP et des extensions obligatoires de MediaSPIP au minimum
mediaspip_install(){
	export TEXTDOMAINDIR=$(pwd)/locale
	export TEXTDOMAIN=mediaspip

	TYPES=(ferme_full ferme minimal full none)

	# Installation de mediaSPIP
	if [ ! -d $SPIP/mediaspip ]; then
		echo $(eval_gettext "Info SPIP telechargement")
		cd $SPIP
		svn co $SPIP_SVN mediaspip 2>> $LOG >> $LOG
		cd mediaspip
	else 
		echo $(eval_gettext "Info SPIP maj")
		cd $SPIP/mediaspip
		svn up 2>> $LOG >> $LOG
	fi
	
	REVISIONSPIP=$(env LANG=C svn info --non-interactive | awk '/^Revision:/ { print $2 }') 2>> $LOG >> $LOG
	echo $(eval_gettext 'Info SPIP install revision $REVISIONSPIP')
	
	echo
	echo $(eval_gettext "Info SPIP extensions")
	
	cd $SPIP/mediaspip/extensions/

	if [ ! -d cfg2_compat ]; then
		i=cfg2_compat
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co svn://zone.spip.org/spip-zone/_plugins_/cfg2/extensions/compat cfg2_compat 2>> $LOG >> $LOG
	fi
	if [ ! -d cfg2_core ]; then
		i=cfg2_core
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co svn://zone.spip.org/spip-zone/_plugins_/cfg2/core cfg2_core 2>> $LOG >> $LOG
	fi
	if [ ! -d cfg2_interface ]; then
		i=cfg2_interface
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co svn://zone.spip.org/spip-zone/_plugins_/cfg2/extensions/interface cfg2_interface 2>> $LOG >> $LOG
	fi
	if [ ! -d diogene ]; then
		i=diogene
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/diogene  2>> $LOG >> $LOG
	fi
	if [ ! -d diogene_gerer_auteurs ]; then
		i=diogene_gerer_auteurs
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/diogene_complements/diogene_gerer_auteurs  2>> $LOG >> $LOG
	fi
	if [ ! -d diogene_licence ]; then
		i=diogene_licence
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/diogene_complements/diogene_licence  2>> $LOG >> $LOG
	fi
	if [ ! -d diogene_spipicious ]; then
		i=diogene_spipicious
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/diogene_complements/diogene_spipicious  2>> $LOG >> $LOG
	fi
	if [ ! -d emballe_medias ]; then
		i=emballe_medias
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/import_video/emballe_medias  2>> $LOG >> $LOG
	fi
	if [ ! -d emballe_medias_spipmotion ]; then
		i=emballe_medias_spipmotion
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/import_video/emballe_medias_spipmotion  2>> $LOG >> $LOG
	fi
	if [ ! -d forum ]; then
		i=forum
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co svn://zone.spip.org/spip-zone/_core_/branches/spip-2.1/plugins/forum  2>> $LOG >> $LOG
	fi
	if [ ! -d html5 ]; then
		i=html5
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/html5 2>> $LOG >> $LOG
	fi
	if [ ! -d mediaspip_config ]; then
		i=mediaspip_config
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/squelettes_spip/mediaspip_config 2>> $LOG >> $LOG
	fi
	if [ ! -d mediaspip_core ]; then
		i=mediaspip_core
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/MediaSPIP/plugins/mediaspip_core 2>> $LOG >> $LOG
	fi
	if [ ! -d mediaspip_init ]; then
		i=mediaspip_init
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/MediaSPIP/plugins/mediaspip_init 2>> $LOG >> $LOG
	fi
	if [ ! -d saveauto ]; then
		i=saveauto
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co svn://zone.spip.org/spip-zone/_plugins_/saveauto/2.1 saveauto 2>> $LOG >> $LOG
	fi
	if [ ! -d swfupload ]; then
		i=swfupload
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/swfupload 2>> $LOG >> $LOG
	fi
	if [ ! -d zpip ]; then
		i=zpip
		echo $(eval_gettext 'Info SPIP telecharge extension $i')
		svn co svn://zone.spip.org/spip-zone/_squelettes_/zpip 2>> $LOG >> $LOG
	fi
	
	extensions_normales=(afficher_objets ajaxforms auteurs_syndic contact crayons doc2img facteur fonctions_images getID3 job_queue jquery_ui licence menus nospam nuage palette pcltar polyhierarchie saisies selecteur_generique spip-bonux-2 spipicious_jquery spipmotion saisies step zen-garden zeroclipboard)
	for i in ${extensions_normales[@]}; do
    	if [ ! -d $i ]; then
    		echo $(eval_gettext 'Info SPIP telecharge extension $i')
    		#echo "Téléchargement de l'extension $i"
			svn co svn://zone.spip.org/spip-zone/_plugins_/$i 2>> $LOG >> $LOG
		fi
	done
	
	cd $SPIP/mediaspip
	
	echo
	echo $(eval_gettext "Info SPIP extensions maj")
	svn up extensions/* 2>> $LOG >> $LOG
	
	if [ ! -d themes ]; then
		mkdir themes
	fi
	
	cd themes
	
	if [ ! -d spipeo ]; then
		i=SPIPeo
		echo $(eval_gettext 'Info SPIP telecharge theme $i')
		svn co http://svn.aires-de-confluxence.info/svn/themes_spip/zpip/spipeo 2>> $LOG >> $LOG
	fi
	
	if [ ! -d brazil ]; then
		i=Brazil
		echo $(eval_gettext 'Info SPIP telecharge theme $i')
		svn co http://svn.aires-de-confluxence.info/svn/themes_spip/zpip/brazil 2>> $LOG >> $LOG
	fi
	
	if [ ! -d arscenic ]; then
		i=Arscenic
		echo $(eval_gettext 'Info SPIP telecharge theme $i')
		svn co http://svn.aires-de-confluxence.info/svn/themes_spip/zpip/arscenic 2>> $LOG >> $LOG
	fi
	
	cd $SPIP/mediaspip
	
	echo
	echo $(eval_gettext "Info SPIP themes maj")
	svn up themes/* 2>> $LOG >> $LOG
	
	TYPES_FULL=(ferme_full full)
	if in_array $SPIP_TYPE ${TYPES_FULL[@]};then
		if [ ! -d plugins ];then
			echo $(eval_gettext "Info SPIP install plugins")
			mkdir -p $SPIP/mediaspip/plugins 2>> $LOG >> $LOG
		else
			echo $(eval_gettext "Info SPIP maj plugins")
			svn up plugins/* 2>> $LOG >> $LOG
		fi
		cd plugins
		plugins_optionnels=(ancres_douces bigbrother compositions criteres_suivant_precedent fulltext google_analytics gravatar legendes mediabox mediatheque memoization metadonnees_photo microblog multilang notation notifications opensearch pages recommander socialtags sparkstats verifier)
		for i in ${plugins_optionnels[@]}; do
	    	if [ ! -d $i ]; then
	    		echo $(eval_gettext 'Info SPIP telecharge plugin $i')
				svn co svn://zone.spip.org/spip-zone/_plugins_/$i 2>> $LOG >> $LOG
			fi
		done
		if [ ! -d agenda ]; then
			i=agenda
			echo $(eval_gettext 'Info SPIP telecharge plugin $i')
			svn co svn://zone.spip.org/spip-zone/_plugins_/agenda/2_1_0 agenda 2>> $LOG >> $LOG
		fi
		if [ ! -d cextras2 ]; then
			i=cextras2
			echo $(eval_gettext 'Info SPIP telecharge plugin $i')
			svn co svn://zone.spip.org/spip-zone/_plugins_/champs_extras2/core cextras2 2>> $LOG >> $LOG
		fi
		if [ ! -d cextras2_interface ]; then
			i=cextras2_interface
			echo $(eval_gettext 'Info SPIP telecharge plugin $i')
			svn co svn://zone.spip.org/spip-zone/_plugins_/champs_extras2/extensions/interface cextras2_interface 2>> $LOG >> $LOG
		fi
		if [ ! -d diogene_geo ]; then
			i=diogene_geo
			echo $(eval_gettext 'Info SPIP telecharge plugin $i')
			svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/diogene_complements/diogene_geo diogene_geo 2>> $LOG >> $LOG
		fi
		if [ ! -d podcast ]; then
			i=podcast
			echo $(eval_gettext 'Info SPIP telecharge plugin $i')
			svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/podcast podcast 2>> $LOG >> $LOG
		fi
		if [ ! -d porte_plume_documents ]; then
			i=porte_plume_documents
			echo $(eval_gettext 'Info SPIP telecharge plugin $i')
			svn co http://svn.aires-de-confluxence.info/svn/plugins_spip/porte_plume_documents porte_plume_documents 2>> $LOG >> $LOG
		fi
		if [ ! -d openid ]; then
			i=openid
			echo $(eval_gettext 'Info SPIP telecharge plugin $i')
			svn co svn://zone.spip.org/spip-zone/_plugins_/authentification/openid openid 2>> $LOG >> $LOG
		fi
		if [ ! -d spip_piwik_2_0 ]; then
			i=Piwik
			echo $(eval_gettext 'Info SPIP telecharge plugin $i')
			svn co svn://zone.spip.org/spip-zone/_plugins_/spip_piwik/spip_piwik_2_0 spip_piwik_2_0 2>> $LOG >> $LOG
		fi
		cd $SPIP/mediaspip
	fi
	
	if in_array $SPIP_TYPE ${TYPES[@]};then
		if [ ! -d mutualisation ];then
			echo $(eval_gettext "Info SPIP install mutualisation")
			svn co svn://zone.spip.org/spip-zone/_plugins_/mutualisation 2>> $LOG >> $LOG &
			wait $!
		else
			echo $(eval_gettext "Info SPIP maj mutualisation")
			svn up mutualisation/  2>> $LOG >> /dev/null &
			wait $!
		fi
		if [ ! -d sites ];then
			echo $(eval_gettext "Info SPIP repertoire sites")
			mkdir sites && chmod 777 lib/ 2>> $LOG >> $LOG &
			wait $!
		fi
	fi
	
	if [ ! -d lib ];then
		echo $(eval_gettext "Info SPIP repertoire lib")
		mkdir lib && chmod 777 lib/ 2>> $LOG >> $LOG &
		wait $!
	fi
	
	echo $(eval_gettext "Info SPIP copie htaccess")
	cp htaccess.txt .htaccess
	
	chown -Rvf $SPIP_USER:$SPIP_GROUP $SPIP/mediaspip 2>> $LOG >> /dev/null &
	wait $!
	
	echo $(eval_gettext "Info MediaSPIP installe")
}