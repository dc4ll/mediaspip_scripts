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
   �    �  C     &   T      {  $   �  '   �  "   �          *  #   I  #   m  &   �  %   �  "   �       \      6   }  7   �  =   �  S   *  1   ~  7   �  =   �  4   &  C   [  D   �  K   �  d  0  )   �     �  U   �  !   5  (   W  (   �  '   �  0   �  0     /   3     c  '   x  0   �  (   �     �       $   8     ]     {     �  %   �  $   �     �        '   =  +   e  ,   �  1   �  !   �          -  0   K  7   |  3   �  ;   �  7   $   >   \   :   �   9   �   D   !  7   U!  H   �!  ;   �!  I   "  <   \"  K   �"  >   �"     $#     @#  9   \#  5   �#  1   �#  .   �#  2   -$  5   `$  &   �$  6   �$  9   �$  &   .%     U%  �   h%  �   �%  �   {&  �   '  �   �'  �   (                I      "                  X       P       C   ?       6          :   #   B              '          2   [       5   Y   K   8      W   E                
              7   S   (   Q   /   U                 ^   \   J   ;      >   )                0   @          M      O      1   $   L       H          %   <   G   =   Z   A   D          T         -   +              &   N       3      R               ]   F   .   9       !   V                     *   4   ,       	    End alternc End dependances End ffmpeg End ffmpeg-php End ffmpeg2theora End flvtool2 End installation generale End lame End libtheora End mediainfo End opencore End php-imagick End rtmpdump End x264 Erreur fichier fonctions Erreur installation regarde log Erreur langue inexistante Erreur langue non set Erreur mediaspip type disponible $TYPEDEMANDE Erreur option cpus numerique Erreur option cpus trop $CPU_NB Erreur script debian Erreur script root Erreur valide LOG Erreur valide SPIP Erreur valide SRC_INSTALL Help message Info MediaSPIP installe Info MediaSPIP non installe Info SPIP changement droits $SPIP_USER $SPIP_GROUP Info SPIP copie htaccess Info SPIP extensions Info SPIP extensions maj Info SPIP install mutualisation Info SPIP install plugins Info SPIP install revision $REVISIONSPIP Info SPIP installation Info SPIP maj Info SPIP maj mutualisation Info SPIP maj plugins Info SPIP plugins Info SPIP repertoire lib Info SPIP repertoire sites Info SPIP telecharge extension $i Info SPIP telecharge plugin $i Info SPIP telecharge theme $i Info SPIP telechargement Info SPIP themes Info SPIP themes maj Info a jour ffmpeg Info a jour ffmpeg-php Info a jour lame Info a jour libtheora Info a jour mediainfo Info a jour opencore Info a jour php-imagick Info a jour x264 Info apt maj base Info apt maj paquets Info debut ffmpeg install Info debut ffmpeg update Info debut ffmpeg-php install Info debut ffmpeg-php update Info debut ffmpeg2theora install Info debut ffmpeg2theora update Info debut flvtool2 Info debut lame install Info debut lame update Info debut libtheora install Info debut libtheora update Info debut mediainfo install Info debut mediainfo update Info debut opencore install Info debut opencore update Info debut php-imagick install Info debut php-imagick update Info debut rtmpdump install Info debut x264 install Info debut x264 update Info ffmpeg revision $REVISION Info ffmpeg-php revision $REVISION Info ffmpeg2theora revision $REVISION Info log installation Info mediaspip installation $VERSION Info source installation Question alternc Question valider Titre dependances logicielles Titre ffmpeg Titre ffmpeg2theora Titre ffmpegphp Titre spip mediaspip Titre x264 Project-Id-Version: MediaSPIP
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2011-01-17 00:47+0100
PO-Revision-Date: 
Last-Translator: kent1 <kent1@arscenic.info>
Language-Team: kent1 <contact@arscenic.tv>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-Language: French
X-Poedit-Country: FRANCE
X-Poedit-SourceCharset: utf-8
 Création des liens symboliques des binaires pour AlternC terminée Fin de l'installation des dépendances Installation de FFMpeg terminée Installation de FFMpeg-php terminée Installation de ffmpeg2theora terminée Installation de Flvtool2 terminée L'installation est terminée. Installation de lame terminée Installation de libtheora terminée Installation de MediaInfo terminée Installation de opencore-amr terminée Installation de php-imagick terminée Installation de rtmpdump terminée Installation de x264 terminée Erreur : le fichier de fonctions de ce script (mediaspip_functions.sh) n'est pas disponible. Sorry something went wrong, please check the log file. Erreur : cette langue n'est pas prise en compte (fr|en) Erreur : aucune langue n'est spécifiée avec l'option --lang Erreur : votre type d'installation de MediaSPIP n'est pas disponible ($TYPEDEMANDE) Erreur : votre option --cpus n'est pas numérique Erreur : votre serveur n'a pas autant de cpus ($CPU_NB) Erreur. Vous ne semblez pas être sur une Distribution Debian Erreur. Ce script doit être lancé en tant que root Erreur. Modifiez la variable LOG pour l'emplacement de votre choix. Erreur. Modifiez la variable SPIP pour l'emplacement de votre choix. Erreur. Modifiez la variable SRC_INSTALL pour l'emplacement de votre choix.  
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
 
  Les fichiers de MediaSPIP sont installés MediaSPIP ne sera pas installé Modifications des droits des fichiers, utilisateur "$SPIP_USER", groupe "$SPIP_GROUP" Copie du fichier htaccess de SPIP Installation des extensions de MediaSPIP Mise à jour des extensions de MediaSPIP Installation du plugin de mutualisation Installation des plugins optionnels de MediaSPIP SPIP est installé à la révision $REVISIONSPIP Ce script installera SPIP dans le répertoire : Mise à jour de SPIP Mise à jour du plugin de mutualisation Mise à jour des plugins optionnels de MediaSPIP Installation des plugins SPIP optionnels Création du répertoire lib/ Création du répertoire sites/ Téléchargement de l'extension : $i Téléchargement du plugin $i Téléchargement du thème : $i Téléchargement de SPIP Installation des thèmes de MediaSPIP Mise à jour des themes de MediaSPIP FFmpeg semble déjà à jour FFmpeg-php semble déjà à jour LAME semble déjà à la version 3.98.4 Libtheora semble déjà à la version 1.1.1 MediaInfo semble déjà à la version 0.7.38 Libopencore-amr semble déjà à la version 0.1.2 php-imagick semble déjà à jour x264 semble déjà à jour Mise à jour de la base d'APT Mise à jour et installation des paquets via APT Téléchargement, compilation et installation de FFMpeg Mise à jour, compilation et installation de FFMpeg Téléchargement, compilation et installation de FFMpeg-php Mise à jour, compilation et installation de FFMpeg-php Téléchargement, compilation et installation de ffmpeg2theora Mise à jour, compilation et installation de ffmpeg2theora Téléchargement, compilation et installation de flvtool2 Téléchargement, compilation et installation de lame version 3.98.4 Recompilation et réinstallation de lame version 3.98.4 Téléchargement, compilation et installation de libtheora version 1.1.1 Recompilation et réinstallation de libtheora version 1.1.1 Téléchargement, compilation et installation de mediainfo version 0.7.38 Recompilation et réinstallation de mediainfo version 0.7.38 Téléchargement, compilation et installation de opencore-amr version 0.1.2 Recompilation et réinstallation de opencore-amr version 0.1.2 Installation de php-imagick Mise à jour de php-imagick Téléchargement, compilation et installation de rtmpdump Téléchargement, compilation et installation de x264 Mise à jour, compilation et installation de x264 FFMpeg est installé à la révision $REVISION FFMpeg-php est installé à la révision $REVISION ffmpeg2theora est installé à la révision $REVISION Ce script enregistrera ses logs dans : Programme d'installation de MediaSPIP version $VERSION Ce script téléchargera les sources des logiciels dans : Utilisez vous AlternC pour MediaSPIP ? Oui ou non (o/n) ?  
############################################
# Installation des dépendances logicielles #
############################################  
############################################
#         Installation de FFMpeg           #
############################################  
############################################
#      Installation de FFMpeg2Theora       #
############################################  
############################################
#       Installation de FFMpeg-php         #
############################################  
############################################
#    Installation de SPIP et MediaSPIP     #
############################################  
############################################
#     Installation de libx264 et x264      #
############################################ 