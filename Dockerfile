FROM ghcr.io/ihaskell/ihaskell-notebook:master

USER root

RUN mkdir /home/$NB_USER/dependent-types-cas781
COPY HaskellCode.ipynb /home/$NB_USER/dependent-types-cas781
COPY assets /home/$NB_USER/dependent-types-cas781/assets
RUN chown --recursive $NB_UID:users /home/$NB_USER/dependent-types-cas781

USER $NB_UID

ENV JUPYTER_ENABLE_LAB=yes
