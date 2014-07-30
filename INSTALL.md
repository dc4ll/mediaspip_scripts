<a name="home"></a>
#Home#

* [Español](#es)
* [English](#en)

---------------------

<a name="es"></a>
> #Instalación #

*  Descargamos el proyecto __mediaspip__ de la siguiente forma: 

> > __``$ git clone https://github.com/kent1D/mediaspip_scripts.git ``__ 

*  Para la autenticación por LDAP es necesario instalar la libreria php5-ldap, la instalamos de la siguiente forma: 

> > > __``$ sudo apt-get install php5-ldap ``__

*  Necesitamos los certificados correpondientes para LDAP, Instalamos el certificado en Debian, utilizando la herramienta ca-certificates.: 

> > > __``CERT=EntidadCertificadoraRazdeBolivia.pem ``__

> > > __``DIR=bolivia ``__

> > > __``sudo chown root:root $CERT ``__

> > > __``sudo chmod 644 $CERT ``__

> > > __``sudo mkdir -p /usr/share/ca-certificates/$DIR ``__

> > > __``sudo cp $CERT /usr/share/ca-certificates/$DIR/ ``__

> > > __``echo "$DIR/$CERT" | sudo tee -a /etc/ca-certificates.conf > /dev/null ``__

> > > __``sudo update-ca-certificates ``__

> Hacer lo mismo con los otros certificados.

*  Creamos el directorio mediaspip en la siguiente ubicación:

> > > __``$ sudo mkdir /var/www/mediaspip ``__

*  Nos dirigimos a la ubicación donde clonamos el proyecto mediaspip

> > > __``$ cd /_dir_/mediaspip ``__

*  Procedemos a la instalación de mediaspip, este paso puede tardar varios minutos ya que se descargaran e instalaran varios paquetes necesarios. 

> > > __``$ sudo ./mediaspip_install.sh ``__

> aceptamos cuando nos diga si queremos instalar los paquetes necesarios y esperamos a que termine la instalación de los paquetes.

*  Para la instalación de mediaspip es necesaria una base de datos, ingresamos a MySql

> > > __``$ mysql -u root ``__

> y creamos nuestra base de datos llamada __``mediaspip``__:

> > > __``> create database mediaspip; ``__ 

*  creamos el usuario __mediaspip__ en mysql con los respectivos privilegios sobre la base de datos: 

> > > __``> GRANT ALL PRIVILEGES ON mediaspip.* TO 'mediaspip'@'localhost' identified by 'MyPassword123'; ``__ 

*  Ahora para empezar con la configuración de mediaspip abrimos la siguiente URL desde un navegador: 

> > > __``http://nuestra_IP/mediaspip/ecrire ``__

> donde __``nuestra_IP``__ es la IP asignada a la maquina de la instalación

*  Para usar las listas de usuarios de LDAP necesitaremos los siguientes datos: 

> > > __``* dirección:   Myred.domainExample1.com``__

> > > __``* puerto:      636``__ (puerto de LDAPS)

> > > __``* bind DN:     cn=mediaspip_prueba,ou=bind,dc=domainExample,dc=domainExample2,dc=bo``__

> > > __``* bind PW:     *******``__

> > > __``* root DN:     dc=dnName1,dc=domainExample,dc=bo``__

> > > __``* users DN:    ou=usuarios,dc=domainExample1,dc=domainExample2,dc=bo``__

*  Ademas debemos agregar al final las siguientes lineas al archivo: __``/etc/ldap/ldap.conf``__

> > > __``TLS_CACERT      /etc/ssl/certs/ca-certificates.crt``__

> > > __``TLS_CACERTDIR   /etc/ssl/certs/``__

> > > __``TLS_REQUEST     allow``__

*  Para que no presente un error al finalizar la instalación, debemos modificar los siguientes archivos

> > * __``/$/mediaspip/ecrire/install/etape3.php ``__ en la linea 303 (el argumento debe ser igual a 0)

> > > con las siguientes lineas:

> > > > > __``//$auteur_obligatoire = !sql_countsel('spip_auteurs','','','',$server_db);``__

> > > > > __``$auteur_obligatoire = 0;``__

> > * __``/$/mediaspip/htaccess.txt ``__ en la linea 25

> > > con la siguiente linea: __``RewriteBase /mediaspip/ ``__

*  Continuar con los pasos que se nos muestran hasta completar la instalación.

[Home](#home)

------------------------

<a name="en"></a>
> #Installation#

*  Download the __mediaspip__ project this way:

> > __``$ git clone https://github.com/kent1D/mediaspip_scripts.git ``__ 

*  For the autentication using LDAP we need to install the package php5-ldadp, we install it this way: 

> > > __``$ sudo apt-get install php5-ldap ``__

*  For LDAP we need some necesary certificates. On Debian we install the certificates using the ca-certificates tool this way: 

> > > __``CERT=EntidadCertificadoraRazdeBolivia.pem ``__

> > > __``DIR=bolivia ``__

> > > __``sudo chown root:root $CERT ``__

> > > __``sudo chmod 644 $CERT ``__

> > > __``sudo mkdir -p /usr/share/ca-certificates/$DIR ``__

> > > __``sudo cp $CERT /usr/share/ca-certificates/$DIR/ ``__

> > > __``echo "$DIR/$CERT" | sudo tee -a /etc/ca-certificates.conf > /dev/null ``__

> > > __``sudo update-ca-certificates ``__

> Do the same for the other certificates.

*  Creamos el directorio mediaspip en la siguiente ubicación:

> > > __``$ sudo mkdir /var/www/mediaspip ``__

*   Change the direction to where we have cloned the mediaspip project.

> > > __``$ cd /_dir_/mediaspip ``__

*  We start with the installation of mediaspip, this step could take several minutes because necesary packages and plugins will be downloaded and installed. 

> > > __``$ sudo ./mediaspip_install.sh ``__

> we have to accept when the program ask us if we want to install the needed packages and just wait until the process ends.

*  For the installation of mediaspip we nedd a new database, for that we log into MySql.

> > > __``$ mysql -u root ``__

> and we create the database called __``mediaspip``__:

> > > __``> create database mediaspip; ``__ 

*  we also create the user __mediaspip__ in mysql with the respective privileges over the base:

> > > __``> GRANT ALL PRIVILEGES ON mediaspip.* TO 'mediaspip'@'localhost' identified by 'MyPassword123'; ``__ 

*  Now for starting with the configuration of the mediaspip site we open the following URL forn a webbrowser: 

> > > __``http://my_IP/mediaspip/ecrire``__

> where __``my_IP``__ is the asigned IP to our server, we can also use a domain name.

*  In order to use the users list from LDAP we need the following data: 

> > > __``* dirección:   Myred.domainExample1.com``__

> > > __``* puerto:      636``__ (LDAPS port)

> > > __``* bind DN:     cn=mediaspip_prueba,ou=bind,dc=domainExample,dc=domainExample2,dc=bo``__

> > > __``* bind PW:     *******``__

> > > __``* root DN:     dc=dnName1,dc=domainExample,dc=bo``__

> > > __``* users DN:    ou=usuarios,dc=domainExample1,dc=domainExample2,dc=bo``__

*  And also we have to add this lines to the file: __``/etc/ldap/ldap.conf``__

> > > __``TLS_CACERT      /etc/ssl/certs/ca-certificates.crt``__

> > > __``TLS_CACERTDIR   /etc/ssl/certs/``__

> > > __``TLS_REQUEST     allow``__

*  For skipping an error at the end of the installation proccess, we have to modify the following files:

> > * __``/$/mediaspip/ecrire/install/etape3.php ``__ on line 303 (the argument should be equal to 0)

> > > with this code:

> > > > > __``//$auteur_obligatoire = !sql_countsel('spip_auteurs','','','',$server_db);``__

> > > > > __``$auteur_obligatoire = 0;``__

> > * __``/$/mediaspip/htaccess.txt ``__ on line 25

> > > with the following code: __``RewriteBase /mediaspip/ ``__

*  Just go on with the next steps that the program show in order to finish the installation.

[Home](#home)
