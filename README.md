# Hadoop-Hive-Spark cluster + Jupyter on Docker

## Состав

* [Hadoop 3.4.1](https://hadoop.apache.org/)

* [Hive 3.1.3](http://hive.apache.org/)

* [Spark 3.4.4](https://spark.apache.org/)

## Рекомендуемые параметры системы

- 16 GB RAM
- 20 GB свободного пространства на диске

## Установка Docker

_Время выполнения: 5-10 минут._

Если у вас уже установлен Docker, пропустите этот раздел.

Откройте терминал (Terminal), перейдите в директорию этого проекта и 
запустите скрипт `bash install-docker-macos.sh`. 
Он выполнит загрузку дистрибутива Docker и выполнит установку. 
От вас может потребоваться ввод пароля учётной записи для доступа приложения 
к системным ресурсам.

Запустите Docker. Вам будет предложено выполнить первичную настройку. Выберите
**Use recommended settings** и продолжайте. Если требуется пароль учётной записи, 
введите его. Пропускайте предложения создать аккаунт или публиковать статистику
(справа сверху кнопка Skip).

## Сборка образов

_Время выполнения: 10-60 минут._

Откройте терминал (Terminal), перейдите в директорию этого проекта и 
запустите скрипт `bash build-cluster.sh`.

## Запуск контейнеров

_Время выполнения: 1 минута._

Откройте терминал (Terminal), перейдите в директорию этого проекта и 
запустите скрипт `bash start-cluster.sh`.

После успешного выполнения скрипта вам доступны следующие ресурсы.

### Hadoop

ResourceManager: http://localhost:8088

NameNode: http://localhost:9870

HistoryServer: http://localhost:19888

Datanode1: http://localhost:9864
Datanode2: http://localhost:9865

NodeManager1: http://localhost:8042
NodeManager2: http://localhost:8043

### Spark

Master: http://localhost:8080

Worker1: http://localhost:8084
Worker2: http://localhost:8085

History: http://localhost:18080

### Hive

URI: `jdbc:hive2://localhost:10000`

### Jupyter Notebook

URL: http://localhost:8894/doc

Создаваемые файлы в Jupyter сохраняются в директории [notebooks](notebooks/) в корне
этого проекта.

## Остановка контейнеров

_Время выполнения: 1-5 минут._

Откройте терминал (Terminal), перейдите в директорию этого проекта и 
запустите скрипт `bash stop-cluster.sh`.

## О проекте

Собрано на основе [проекта в GitHub](https://github.com/chihweiwork/hadoop-hive-spark-jupyter-docker).
