#!/usr/bin/env bash

cd /home/app/webapp
su app -c "bin/rake assets:precompile RAILS_ENV=production" || echo 'Failed'
su app -c "RAILS_ENV=production bin/rake db:migrate" || echo 'Failed'

echo
echo
echo -e "\e[32m*****************************************"
echo -e "\e[32m*                                       *"
echo -e "\e[32m*  \e[0m👉 Now open http://localhost:3118 👈 \e[32m*"
echo -e "\e[32m*                                       *"
echo -e "\e[32m*****************************************"
echo -e "\e[0m"
echo
echo