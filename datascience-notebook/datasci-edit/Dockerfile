FROM jupyter/datascience-notebook

RUN conda install -y -c conda-forge xgboost
RUN conda install -y -c conda-forge r-gbm
RUN conda install -y -c conda-forge pymc3
RUN conda install -y -c glemaitre imbalanced-learn

RUN conda update -y pandas
RUN pip install graphviz
RUN pip install bambi
RUN pip install lifelines
RUN pip install feather-format
RUN pip install patsy
RUN pip install lime
RUN conda install -c conda-forge python-graphviz


COPY jupyter_notebook_config.py /root/.jupyter/

EXPOSE 8888
