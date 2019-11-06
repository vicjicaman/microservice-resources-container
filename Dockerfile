FROM nginx:alpine

ENV CONFIG_HOME=/env/app/dist
RUN mkdir -p ${CONFIG_HOME}

ARG CACHEBUST=1
RUN echo "CACHE $CACHEBUST"
COPY ./dist ${CONFIG_HOME}


#ENTRYPOINT ["/bin/bash", "-c", "nginx", "-c", "/env/app/dist"]
CMD ["nginx", "-c", "/env/app/dist/nginx.conf"]
