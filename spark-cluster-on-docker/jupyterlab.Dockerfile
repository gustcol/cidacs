FROM cluster-base

# -- Layer: JupyterLab

ARG spark_version=3.2.1
ARG jupyterlab_version=3.4.2

RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    pip3 install wget pyspark==${spark_version} jupyterlab==${jupyterlab_version}

# -- Runtime

EXPOSE 5555
WORKDIR ${SHARED_WORKSPACE}
CMD jupyter lab --ip=0.0.0.0 --port=5555 --no-browser --allow-root --NotebookApp.token=
