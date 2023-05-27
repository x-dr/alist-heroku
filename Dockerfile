FROM xhofe/alist:latest
LABEL MAINTAINER="ddd"

RUN chmod -R 777 /opt/alist/data
ADD alist.sh /alist.sh
RUN chmod +x /alist.sh

CMD /alist.sh
