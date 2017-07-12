FROM java:8
ENV SCRIBBLEDIR /usr/local/fsmdemo
ENV PATH /usr/local/fsmdemo/bin:$PATH
RUN mkdir  -p $SCRIBBLEDIR 
RUN chmod 0777 $SCRIBBLEDIR
RUN mkdir  -p $SCRIBBLEDIR/bin/generated
RUN chmod 0777 $SCRIBBLEDIR/bin/generated
RUN mkdir  -p $SCRIBBLEDIR/lib
RUN chmod 0777 $SCRIBBLEDIR
WORKDIR $SCRIBBLEDIR/bin
EXPOSE 4045
ADD /lib/*.jar $SCRIBBLEDIR/lib/
ADD /bin/* $SCRIBBLEDIR/bin/
ENTRYPOINT ["fsm-server.sh"]
CMD [4045,/estafet/fsm/demo/api,/usr/local/fsmdemo]

