# Hadoop-Docker
Simulating multi-node distributed deployment of Hadoop using Docker.

## 1. Node Overview
A total of 11 nodes, with each component corresponding to the following nodes.

### 1.1 HDFS
- NameNode:
    - namenode
- SecondaryNamenode:
    - secondarynamenode
- DataNode:
    - datanode0
    - datanode1
    - datanode2

### 1.2 YARN
- ResourceManager:
    - resourcemanager
- ProxyServer:
    - proxyserver
- HistoryServer:
    - historyserver
- NodeManager:
    - nodemanager0
    - nodemanager1
    - nodemanager2

## 2. Run
### 2.1 Build the Image
```SHELL
docker build -t hadoop-docker:3.3.5 .
```

### 2.2 Hadoop Parameter Configuration
Modify the Hadoop-related config settings in the `.env` file. You can make additional adjustments as needed or use the default settings.

### 2.3 Run Containers
```SHELL
docker-compose up -d
```

### 2.4 Check Cluster Status
Access the corresponding addresses via a web browser to check the status of each cluster component.

| Address | Description |
| --- | --- |
| `<Host_IP>:9870` | HDFS |
| `<Host_IP>:8080` | YARN |
| `<Host_IP>:9870` | JobHistory |

### 2.5 Stop Containers
```SHELL
docker-compose down
```
