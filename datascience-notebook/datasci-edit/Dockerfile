FROM jupyter/datascience-notebook

RUN conda install -y -c conda-forge xgboost
RUN conda install -y -c conda-forge r-gbm
RUN conda update -y pandas

COPY jupyter_notebook_config.py /root/.jupyter/

EXPOSE 8888
