FROM ghcr.io/ihaskell/ihaskell-notebook:master

USER root

RUN mkdir /home/$NB_USER/dependent-types-cas781
COPY HaskellCode.ipynb /home/$NB_USER/dependent-types-cas781
COPY assets /home/$NB_USER/dependent-types-cas781/assets
RUN chown --recursive $NB_UID:users /home/$NB_USER/dependent-types-cas781

ARG EXAMPLES_PATH=/home/$NB_USER/ihaskell_examples
COPY notebook_extra/WidgetRevival.ipynb $EXAMPLES_PATH/
RUN chown $NB_UID:users $EXAMPLES_PATH/WidgetRevival.ipynb

USER $NB_UID

ENV JUPYTER_ENABLE_LAB=yes
