 #!/bin/bash
 
 # déplace le fichier conf de NGINX dans le repertoire des fichiers conf
 mv ocpizza /etc/nginx/sites-available
 #creation du lien symbolique dans site-enable
 ln -s /etc/nginx/sites-available/ocpizza /etc/nginx/sites-enabled
 
 # déplace le fichier conf de Supervisor dans le repertoire des fichiers conf
 mv ocpizza.conf /etc/supervisor/conf.d/
 
#actualise les services
service nginx reload
supervisorctl update
supervisorctl reload

 #Création du répertoire dédié aux sauvegardes de la base de données en donnant les droits à postgres :
 mkdir -p /backup/database/postgresql/
 chown -R postgres:postgres /backup/database/postgresql/
 
 mv cron_ocpizza /etc/cron.daily/
 
 #on modifie les droits d’accès au fichier :
 chmod +x /etc/cron.daily/postgresql-ocpizza