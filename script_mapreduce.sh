# Instalación y configuración del entorno Java y Hadoop
!apt-get install openjdk-8-jdk-headless -qq > /dev/null
!wget -q https://downloads.apache.org/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz
!tar -xzf hadoop-3.3.6.tar.gz

# Configuración de variables de entorno
import os
os.environ["JAVA_HOME"] = "/usr/lib/jvm/java-8-openjdk-amd64"
os.environ["HADOOP_HOME"] = "/content/hadoop-3.3.6"

# Creación de directorio y datos de prueba
!mkdir -p input
!echo "Analisis de Big Data con Apache Hadoop MapReduce para la clase de Big Data" > input/datos.txt
!echo "Hadoop distribuye el analisis y MapReduce procesa los datos" >> input/datos.txt

# Ejecución del trabajo WordCount en MapReduce
!/content/hadoop-3.3.6/bin/hadoop jar /content/hadoop-3.3.6/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar wordcount input output

# Visualización de resultados
!cat output/part-r-00000
