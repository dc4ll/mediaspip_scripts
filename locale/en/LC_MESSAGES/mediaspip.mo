��    g      T  �   �      �     �  
   �     �  
   �     �     �     	     	     +	     4	     B	     P	     ]	     m	     z	     �	     �	     �	     �	  -   �	     
     7
     W
     l
     
     �
     �
     �
     �
     �
  2   �
     2     K     `     y     �  (   �     �     �               3     E     ^  !   y     �     �     �     �               *     A     [     z     �     �     �     �     �          0     P     h     �     �     �     �     �     �           (     I     i      }     �  %   �  $   �  %   	  $   /  $   T  #   y     �     �     �     �          %  "   D  %   g     �  $   �     �     �     �               .     ;     O     _  
   t  �    +         3  "   T     w      �  #   �     �     �          #     C  "   c  !   �     �     �  U   �  8   8  -   q  .   �  H   �  *     7   B  5   z  *   �  =   �  >     E   X  d  �  #        '  P   D      �  #   �     �  +   �  1   $  +   V  @   �     �  $   �  +   �  1         R     p     �     �     �     �     �          /  !   M  6   o  ;   �  ;   �  A      "   `      �      �   6   �      �   7   !     <!     S!     j!     {!  +   �!  0   �!  .   �!  4   ""  2   W"  7   �"  5   �"  2   �"  ?   +#  9   k#  D   �#  >   �#  D   )$  >   n$  G   �$  A   �$     7%     S%  2   i%  .   �%  ,   �%  )   �%  -   "&  0   P&  #   �&  3   �&  /   �&      	'     *'  �   ;'  �   �'  �   M(  �   �(  �   _)  �   �)  �   q*     4   E   P   L   `   B   %   Q               F   C           ^   A      *      !   >      R                 X      (       a   $   G       #       \   &   /   8   b              D   [       e   
          6          <         3       -   I   d   '          0   ]   M          O           g   2           :         H       S   N   W      V   @   Z      ;      5   J          	                 T          9       K         7   +   ,           ?         _   Y      )   "               1   .       U       f      =   c    End alternc End apache End dependances End ffmpeg End ffmpeg-php End ffmpeg2theora End flvtool2 End installation generale End lame End libtheora End mediainfo End opencore End php-imagick End rtmpdump End x264 Erreur fichier fonctions Erreur installation regarde log Erreur langue inexistante Erreur langue non set Erreur mediaspip type disponible $TYPEDEMANDE Erreur option cpus numerique Erreur option cpus trop $CPU_NB Erreur script debian Erreur script root Erreur valide LOG Erreur valide SPIP Erreur valide SRC_INSTALL Help message Info MediaSPIP installe Info MediaSPIP non installe Info SPIP changement droits $SPIP_USER $SPIP_GROUP Info SPIP copie htaccess Info SPIP extensions Info SPIP extensions maj Info SPIP install mutualisation Info SPIP install plugins Info SPIP install revision $REVISIONSPIP Info SPIP installation Info SPIP maj Info SPIP maj mutualisation Info SPIP maj plugins Info SPIP plugins Info SPIP repertoire lib Info SPIP repertoire sites Info SPIP telecharge extension $i Info SPIP telecharge plugin $i Info SPIP telecharge theme $i Info SPIP telechargement Info SPIP themes Info SPIP themes maj Info a jour ffmpeg Info a jour ffmpeg-php Info a jour lame $VERSION Info a jour libtheora $VERSION Info a jour mediainfo $VERSION Info a jour opencore $VERSION Info a jour php-imagick Info a jour x264 Info apache mod deflate Info apache mod deflate fichier Info apache mod expires Info apache mod expires fichier Info apache mod headers Info apache mod rewrite Info apache reload Info apt maj base Info apt maj paquets Info debut ffmpeg install Info debut ffmpeg update Info debut ffmpeg-php install Info debut ffmpeg-php update Info debut ffmpeg2theora install Info debut ffmpeg2theora update Info debut flvtool2 Info debut lame install $VERSION Info debut lame update $VERSION Info debut libtheora install $VERSION Info debut libtheora update $VERSION Info debut mediainfo install $VERSION Info debut mediainfo update $VERSION Info debut opencore install $VERSION Info debut opencore update $VERSION Info debut php-imagick install Info debut php-imagick update Info debut rtmpdump install Info debut x264 install Info debut x264 update Info ffmpeg revision $REVISION Info ffmpeg-php revision $REVISION Info ffmpeg2theora revision $REVISION Info log installation Info mediaspip installation $VERSION Info source installation Question alternc Question valider Titre apache Titre dependances logicielles Titre ffmpeg Titre ffmpeg2theora Titre ffmpegphp Titre spip mediaspip Titre x264 Project-Id-Version: MediaSPIP
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2011-01-17 16:49+0100
PO-Revision-Date: 
Last-Translator: kent1 <kent1@arscenic.info>
Language-Team: kent1 <contact@arcenic.tv>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: 
X-Poedit-Language: English
X-Poedit-Country: UNITED KINGDOM
X-Poedit-SourceCharset: utf-8
 Binaries symbolic links for AlternC created Configuration of Apache finished Dependencies installation finished FFMpeg installation finished FFMpeg-php installation finished ffmpeg2theora installation finished FLVtool2 installation finished Full setup done LAME installation finished Libtheora installation finished MediaInfo installation finished opencore-amr installation finished php-imagick installation finished rtmpdump Installation finished x264 installation finished Error : the functions file of this script is not accessible (mediaspip_functions.sh). Error : something went wrong, please check the log file. Error : this language isn't supported (fr|en) Error : no language set with the option --lang Error : your MediaSPIP installation type is not available ($TYPEDEMANDE) Error : your option --cpus is not a number Error : your server doesn't have so much CPUS ($CPU_NB) Error : it doesn't seem your distribution is a Debian Error : you should run this script as root Error : modify the LOG variable to your personnalized folder. Error : modify the SPIP variable to your personnalized folder. Error : modify the SRC_INSTALL variable to your personnalized folder.  
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
 
  The MediaSPIP's files are installed MediaSPIP won't be installed Modifications of the rights of the files, user "$SPIP_USER", group "$SPIP_GROUP" Copy of the SPIP's htaccess file MediaSPIP's extensions installation MediaSPIP's extensions update Installation of the pooling websites plugin Installation of the optional plugins of MediaSPIP SPIP is installed at revision $REVISIONSPIP This script will install SPIP and MediaSPIP files in the folder: SPIP update Update of the pooling website plugin Update of the optional plugins of MediaSPIP Installation of the optional plugins of MediaSPIP Creation of the "lib/" folder Creation of the "sites/" folder Download of the extension : $i Download of the plugin $i Download of the theme : $i Download of SPIP MediaSPIP's themes installation MediaSPIP's themes update FFmpeg seems to be up to date FFmpeg-php seems to be up to date LAME seems to already be installed at version $VERSION Libtheora seems to already be installed at version $VERSION MediaInfo seems to already be installed at version $VERSION Libopencore-amr seems to already be installed at version $VERSION php-imagick seems to be up to date x264 seems to be up to date mod_deflate activation Installation of the configuration file for mod_deflate mod_expires activation Installation of the configuration file for  mod_expires mod_headers activation mod_rewrite activation Reload of Apache Update of the APT database Update and installation of the APT packages Download, compilation and installation of FFMpeg Update, compilation and installation of FFMpeg Download, compilation and installation of FFMpeg-php Update, compilation and installation of FFMpeg-php Download, compilation and installation of ffmpeg2theora Update, compilation and installation of ffmpeg2theora Download, compilation and installation of flvtool2 Download, compilation and installation of LAME version $VERSION Recompilation et réinstallation de lame version $VERSION Download, compilation and installation of libtheora version $VERSION Recompilation et réinstallation de libtheora version $VERSION Download, compilation and installation of mediainfo version $VERSION Recompilation et réinstallation de mediainfo version $VERSION Download, compilation and installation of opencore-amr version $VERSION Recompilation et réinstallation de opencore-amr version $VERSION Installation of php-imagick Update of php-imagick Download, compilation and installation of rtmpdump Download, compilation and installation of x264 Update, compilation and installation of x264 FFMpeg is installed at revision $REVISION FFMpeg-php is installed at revision $REVISION ffmpeg2theora is installed at revision $REVISION This script will save its logs in : Installation software of MediaSPIP version $VERSION This script will download softwares sources in: Do you use AlternC for MediaSPIP Yes / No (y/n) ?  
############################################
#           Apache configuration           #
############################################  
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