# Cidacs - Analytic Environment

to start the environment ./start_all
to stop ./stop_all

By default, the stack exposes the following ports:

* 5044: Logstash Beats input
* 5000: Logstash TCP input
* 9600: Logstash monitoring API
* 9200: Elasticsearch HTTP
* 9300: Elasticsearch TCP transport
* 5601: Kibana
* 9001: Minio
* 5555: Jupiter notebook
* 8080: Spark 


### Spark - Configuration
* 5 Nodes
* SPARK_WORKER_CORES=8
* SPARK_WORKER_MEMORY=32G


### Minio - Configuration and Credentials
      - MINIO_ROOT_USER=admin
      - MINIO_ROOT_PASSWORD=supersecret
./data/minio ==> local folder to add and export the files
More info about Minio [https://thedatabaseme.de/2022/03/20/i-do-it-on-my-own-then-self-hosted-s3-object-storage-with-minio-and-docker/]