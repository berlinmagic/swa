# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#   Magic - Recipes 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

server              "178.77.101.173",      :web,   :app,   :db,    :primary => true

set :user,          "root"                                #=> ssh-user
set :password,      "behave"                              #=> sudo-pwd
set :domains,       ["swa.berlinmagic.com", "www.swa.berlinmagic.com"]      #=> domain list
set :application,   "swa-prototype"                           #=> app / folder name
set :app_name,      "swa"                            #=> shortname for app
set :server_ip,     "178.77.101.173"                               #=> IP of the Server
set :deploy_to,     "/home/deploy/apps/#{application}"      #=> deploy path
set :rails_env,     "production"                            #=> Rails environment


# rvm variables:
set :rvm_ruby,             '1.9.3'                     #=> Ruby version
set :rvm_patch,            'p0'                        #=> Patch level
set :rvm_gemset,           'magicplan'                    #=> Gemset
set :rvm_path,             '/usr/local/rvm'            #=> RVM-Path


# nginx variables:
set :rails_server,         'thin'                      #=> Rails-Server ( thin | passenger | unicorn )
set :app_instances,        1                           #=> Server instances
set :http_enabled_path,    '/opt/nginx/http-enabled'   #=> HTTP-folder (sites-enabled)
# => set :tcp_enabled_path,     '/opt/nginx/tcp-enabled'    #=> TCP-folder (needs nginx_tcp_proxy_module)
set :default_site,         false                       #=> Is this site the server default ?


# thin variables:
set :thin_path,            '/etc/thin'                 #=> Thin config path


# private_pub variables:
# => set :private_pub_domain,       "0.0.0.0"               #=> private_pub domain
# => set :private_pub_host,         9200                    #=> public port
# => set :private_pub_port,         9292                    #=> intern port
# => set :private_pub_key,          "882293e492b7e7a2fed266a5f38062420e12fb75eae5f145e256af60dc9681bc"


# assets variables:
set :normalize_asset_timestamps,   true                #=> ?
set :make_pulbic_folder_public,    true                #=> chmod 777 on 'public' and 'tmp' folder


# GitHub
set :scm,               :git
set :repository,        "https://github.com/berlinmagic/swa.git"  #=> for private-repos
set :deploy_via,        :copy                              #=> :copy | :remote_cache | ..
set :branch,            :master                            #=> Git branch
# => # set :local_repository,  "/path/to/repo.git"              #=> for local-path
# => # set :git_enable_submodules, 1                            #=> Git submodules


# PostgreSQL
set :postgresql_host,      "localhost"                     #=> postgres host
set :postgresql_user,      "#{ app_name }"                 #=> postgres user
set :postgresql_password,  "password"                      #=> postgres user password, if not set prompt will follow
set :postgresql_database,  "#{ app_name }_#{ rails_env }"  #=> postgres db name
set :postgresql_pool,      3                               #=> postgres pool


# SqLite3 ... this is more for test & try pupose (save .sqlite and copy to current after deploy)
# => set :sqlite_path,     "#{ deploy_to }/shared/db/"          #=> shared path for db
# => set :sqlite_db,       "#{ rails_env }"                     #=> sqlite name
# SqLite3-callbacks
# => before  "deploy", "sqlite:save_db"
# => after   "deploy", "sqlite:copy_db"


# if you want to clean up old releases on each deploy uncomment this:
set     :keep_releases,     3
after   "deploy:restart",   "deploy:cleanup" 


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#   Usage:
#   magic_recipes :nginx, :private_pub, :rvm, :thin
#   available:
#   :assets, :db, :gems, :nginx, :passenger, :postgresql, :private_pub, :rbenv, :rvm, :sqlite, :thin, :unicorn
#   works great:
#   :assets, :db, :nginx, :postgresql, :private_pub, :rvm, :sqlite, :thin
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

magic_recipes :assets, :db, :nginx, :postgresql, :rvm, :thin



