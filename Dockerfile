FROM docker
COPY my_main_process my_main_process.sh
COPY my_wrapper_script.sh my_wrapper_script.sh
RUN chmod +x /my_wrapper_script.sh /my_main_process.sh && apk add jq
CMD ./my_wrapper_script.sh
