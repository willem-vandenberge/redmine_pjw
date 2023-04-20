### Dockerfile.yml
FROM redmine:5.0.5
    # ref https://github.com/danmunn/redmine_dmsf/issues/901
RUN apt-get update && apt-get install -y make gcc && \
    # ref https://github.com/danmunn/redmine_dmsf/issues/984
    sed -i -e 's/config.eager_load = true/config.eager_load = false/g' config/environments/production.rb
    # add modified redmine_dmsf
ADD --chown=redmine:redmine /data/redmine/redmine_dmsf /data/redmine/plugins/redmine_dmsf