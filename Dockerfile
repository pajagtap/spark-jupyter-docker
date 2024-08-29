FROM dockerproxy.aexp.com/datamechanics/spark:3.2.1-hadoop-3.3.1-java-11-scala-2.12-python-3.8-dm18

USER root

# WORKDIR /opt/spark

RUN pip install --upgrade pip

RUN mkdir -p /home/spark-jupyter-data

COPY requirements.txt /home/spark-jupyter-data
RUN pip3 install -r /home/spark-jupyter-data/requirements.txt

WORKDIR /home/spark-jupyter-data
CMD jupyter-lab --allow-root --no-browser --ip=0.0.0.0
