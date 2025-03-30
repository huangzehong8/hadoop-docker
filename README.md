# Hadoop-Docker
使用Docker模拟多节点分布式部署Hadoop。


## 1. 各节点介绍
总共11个节点，各个组件对应的节点如下。

### 1.1 HDFS
- NameNode：
    - namenode
- SecondaryNamenode
    - secondarynamenode
- DataNode：
    - datanode0
    - datanode1
    - datanode2

### 1.2 YARN
- ResourceManager：
    - resourcemanager
- ProxyServer：
    - proxyserver
- HistoryServer：
    - historyserver
- NodeManager：
    - nodemanager0
    - nodemanager1
    - nodemanager2


## 2. 运行
### 2.1 制作镜像
```SHELL
docker build -t hadoop-docker:3.3.5 .
```

### 2.2 hadoop参数设置
修改`.env`文件中的hadoop相关参数设置，可以根据需要进行额外的调整，也可以不修改直接使用。

### 2.3 运行容器
```SHELL
docker-compose up -d
```

### 2.4 查看集群状态
通过浏览器访问对应的地址来查看集群各个组件的状态。
| 地址 | 说明 |
| --- | --- |
| `<宿主机IP>:9870` | HDFS |
| `<宿主机IP>:8080` | YARN |
| `<宿主机IP>:9870` | JobHistory |

### 2.5 停止容器
```SHELL
docker-compose down
```

## 3. TODO
- [ ] 基于构建的Hadoop集群，部署Hive。
- [ ] 基于构建的Hadoop集群，部署Spark。
