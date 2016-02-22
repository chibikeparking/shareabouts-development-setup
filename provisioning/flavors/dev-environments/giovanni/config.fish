function edit
    command vim $HOME'/.config/fish/config.fish'
end

function reload
    . $HOME'/.config/fish/config.fish'
end

function activate
    source /iscape/sites/site_user/bin/activate.fish
    cd /iscape/sites/site_user/proj/site_user
end

function tose
    cd /iscape/sites/site_user/proj/site_user/site_user
end

function apps
    cd /iscape/sites/site_user/proj/site_user/site_user/apps/$argv
end

function srcapps
    cd /iscape/sites/site_user/src/$argv

function server
    activate
    python manage.py runserver 0.0.0.0:8000
end
