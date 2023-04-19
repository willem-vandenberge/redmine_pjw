FROM redmine:3.3.9

RUN apt-get update && apt-get install xapian-omega ruby-xapian libxapian-dev xpdf poppler-utils antiword  unzip catdoc libwpd-tools \
cmake libwps-tools gzip unrtf catdvi djview djview3 uuid uuid-dev xz-utils libemail-outlook-message-perl build-essential -y && gem install zip-zip