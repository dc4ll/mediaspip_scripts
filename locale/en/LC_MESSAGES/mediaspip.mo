��    ^           �      �     �       
              /     A     N     h     q          �     �     �     �     �     �     �     	  -   )	     W	     t	     �	     �	     �	     �	     �	     �	     
      
  2   <
     o
     �
     �
     �
     �
  (   �
          0     >     Z     p     �     �  !   �     �     �          .     ?     T     g     ~     �     �     �     �     �     �                :     S     q      �     �     �     �     �          /     K     h     �     �     �     �     �          ,     C  "   b  %   �     �  $   �     �     �          !     ?     L     `     p  
   �  �  �  +     "   D     g      �  #   �     �     �     �          3  "   S  !   v     �     �  \   �  6   /  -   f  .   �  H   �  *     7   7  5   o  *   �  =   �  >     E   M  d  �  #   �       P   9      �  #   �     �  +   �  1     +   K  @   w     �  $   �  +   �  1        G     e     �     �     �     �     �     
     $  !   B  5   d  9   �  :   �  ?     "   O     r     �  0   �  7   �  3     ;   I  7   �  >   �  :   �  9   7   =   q   7   �   A   �   ;   )!  B   e!  <   �!  K   �!  >   1"     p"     �"  9   �"  5   �"  ,   #  )   ?#  -   i#  0   �#  #   �#  6   �#  /   #$      S$     t$  �   �$  �   %  �   �%  �    &  �   �&  �   2'                I      "                  X       P       C   ?       6          :   #   B              '          2   [       5   Y   K   8      W   E                
              7   S   (   Q   /   U                 ^   \   J   ;      >   )                0   @          M      O      1   $   L       H          %   <   G   =   Z   A   D          T         -   +              &   N       3      R               ]   F   .   9       !   V                     *   4   ,       	    End alternc End dependances End ffmpeg End ffmpeg-php End ffmpeg2theora End flvtool2 End installation generale End lame End libtheora End mediainfo End opencore End php-imagick End rtmpdump End x264 Erreur fichier fonctions Erreur installation regarde log Erreur langue inexistante Erreur langue non set Erreur mediaspip type disponible $TYPEDEMANDE Erreur option cpus numerique Erreur option cpus trop $CPU_NB Erreur script debian Erreur script root Erreur valide LOG Erreur valide SPIP Erreur valide SRC_INSTALL Help message Info MediaSPIP installe Info MediaSPIP non installe Info SPIP changement droits $SPIP_USER $SPIP_GROUP Info SPIP copie htaccess Info SPIP extensions Info SPIP extensions maj Info SPIP install mutualisation Info SPIP install plugins Info SPIP install revision $REVISIONSPIP Info SPIP installation Info SPIP maj Info SPIP maj mutualisation Info SPIP maj plugins Info SPIP plugins Info SPIP repertoire lib Info SPIP repertoire sites Info SPIP telecharge extension $i Info SPIP telecharge plugin $i Info SPIP telecharge theme $i Info SPIP telechargement Info SPIP themes Info SPIP themes maj Info a jour ffmpeg Info a jour ffmpeg-php Info a jour lame Info a jour libtheora Info a jour mediainfo Info a jour opencore Info a jour php-imagick Info a jour x264 Info apt maj base Info apt maj paquets Info debut ffmpeg install Info debut ffmpeg update Info debut ffmpeg-php install Info debut ffmpeg-php update Info debut ffmpeg2theora install Info debut ffmpeg2theora update Info debut flvtool2 Info debut lame install Info debut lame update Info debut libtheora install Info debut libtheora update Info debut mediainfo install Info debut mediainfo update Info debut opencore install Info debut opencore update Info debut php-imagick install Info debut php-imagick update Info debut rtmpdump install Info debut x264 install Info debut x264 update Info ffmpeg revision $REVISION Info ffmpeg-php revision $REVISION Info ffmpeg2theora revision $REVISION Info log installation Info mediaspip installation $VERSION Info source installation Question alternc Question valider Titre dependances logicielles Titre ffmpeg Titre ffmpeg2theora Titre ffmpegphp Titre spip mediaspip Titre x264 Project-Id-Version: MediaSPIP
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2011-01-17 00:47+0100
PO-Revision-Date: 
Last-Translator: kent1 <kent1@arscenic.info>
Language-Team: kent1 <contact@arcenic.tv>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-Language: English
X-Poedit-Country: UNITED KINGDOM
X-Poedit-SourceCharset: utf-8
 Binaries symbolic links for AlternC created Dependencies installation finished FFMpeg installation finished FFMpeg-php installation finished ffmpeg2theora installation finished FLVtool2 installation finished Full setup done LAME installation finished Libtheora installation finished MediaInfo installation finished opencore-amr installation finished php-imagick installation finished rtmpdump Installation finished x264 installation finished Erreur : le fichier de fonctions de ce script (mediaspip_functions.sh) n'est pas disponible. Sorry something went wrong, please check the log file. Error : this language isn't supported (fr|en) Error : no language set with the option --lang Error : Your MediaSPIP installation type is not available ($TYPEDEMANDE) Error : your option --cpus is not a number Error : your server doesn't have so much CPUS ($CPU_NB) Error : it doesn't seem your distribution is a Debian Error : you should run this script as root Error : modify the LOG variable to your personnalized folder. Error : modify the SPIP variable to your personnalized folder. Error : modify the SRC_INSTALL variable to your personnalized folder.  
Copyright (c) 2010 - kent1

Ce programme est un logiciel libre distribué sous licence GNU/GPL.

Pour plus de détails voir le fichier COPYING.txt.

EXPLICATIONS :

Ce script installera toutes les dépendances logicielles requises pour l'installation de MediaSPIP.

Il installera ensuite le logiciels SPIP (http://www.spip.net) ainsi que les extensions nécessaires dans le répertoire d'installation spécifié.

Les paramètres possibles du scripts sont :
--install : l'emplacement où les sources des librairies et binaires seront téléchargés
--cpus : permet de forcer le nombre de cpus à utiliser pour les compilations
--spip_type : type d'installation de MediaSPIP (ferme|ferme_full|minimal|full|none). Défaut : ferme_full
--spip_user : utilisateur système (UID) des fichiers de MediaSPIP
--spip_group : groupe système (GID) des fichiers de MediaSPIP
 
  The MediaSPIP's files are installes MediaSPIP won't be installed Modifications of the rights of the files, user "$SPIP_USER", group "$SPIP_GROUP" Copy of the SPIP's htaccess file MediaSPIP's extensions installation MediaSPIP's extensions update Installation of the pooling websites plugin Installation of the optional plugins of MediaSPIP SPIP is installed at revision $REVISIONSPIP This script will install SPIP and MediaSPIP files in the folder: SPIP update Update of the pooling website plugin Update of the optional plugins of MediaSPIP Installation of the optional plugins of MediaSPIP Creation of the "lib/" folder Creation of the "sites/" folder Download of the extension : $i Download of the plugin $i Download of the theme : $i Download of SPIP MediaSPIP's themes installation MediaSPIP's themes update FFmpeg seems to be up to date FFmpeg-php seems to be up to date LAME seems to allready be installed at version 3.98.4 Libtheora seems to allready be installed at version 1.1.1 MediaInfo seems to allready be installed at version 0.7.38 Libopencore-amr seems to allready be installed at version 0.1.2 php-imagick seems to be up to date x264 seems to be up to date Mise à jour de la base d'APT Mise à jour et installation des paquets via APT Téléchargement, compilation et installation de FFMpeg Mise à jour, compilation et installation de FFMpeg Téléchargement, compilation et installation de FFMpeg-php Mise à jour, compilation et installation de FFMpeg-php Téléchargement, compilation et installation de ffmpeg2theora Mise à jour, compilation et installation de ffmpeg2theora Téléchargement, compilation et installation de flvtool2 Download, compilation and installation of LAME version 3.98.4 Recompilation et réinstallation de lame version 3.98.4 Download, compilation and installation of libtheora version 1.1.1 Recompilation et réinstallation de libtheora version 1.1.1 Download, compilation and installation of mediainfo version 0.7.38 Recompilation et réinstallation de mediainfo version 0.7.38 Téléchargement, compilation et installation de opencore-amr version 0.1.2 Recompilation et réinstallation de opencore-amr version 0.1.2 Installation de php-imagick Update of php-imagick Téléchargement, compilation et installation de rtmpdump Téléchargement, compilation et installation de x264 Update, compilation and installation of x264 FFMpeg is installed at revision $REVISION FFMpeg-php is installed at revision $REVISION ffmpeg2theora is installed at revision $REVISION This script will save its logs in : Programme d'installation de MediaSPIP version $VERSION This script will download softwares sources in: Do you use AlternC for MediaSPIP Yes / No (y/n) ?  
############################################
#    Software dependencies installation    #
############################################  
############################################
#           FFMpeg installation            #
############################################  
############################################
#        FFMpeg2Theora installation        #
############################################  
############################################
#         FFMpeg-php installation          #
############################################  
############################################
#     SPIP and MediaSPIP installation      #
############################################  
############################################
#      libx264 and x264 installation       #
############################################ 