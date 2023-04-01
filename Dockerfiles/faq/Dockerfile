# from rasa base image
FROM rasa/rasa:3.3.7
# copy all source and the Rasa generated model
COPY ./faq/ /app

# inform which port will run on
EXPOSE 5005

USER root

ENTRYPOINT []
ENV shell_mode false

RUN rasa train

# launch script (rasa shell or rasa run)
# --auth-token 0123456789
CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run --log-file rasa.log --endpoints endpoints.yml --debug --enable-api -p 5005 --cors "*"; else rasa shell -p 5005; fi'