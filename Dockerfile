FROM uphold/litecoin-core:0.17.1

EXPOSE 19443

ADD init-node.sh /tmp
RUN chmod 777 /tmp/init-node.sh

CMD /tmp/init-node.sh
