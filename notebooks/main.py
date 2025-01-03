#import findspark
from pyspark.sql import SparkSession


if __name__ == "__main__":
    #findspark.init('/opt/spark')

    spark = (
        SparkSession
        .builder
        .appName("WordCount")
        .getOrCreate()
    )

    data = [
        "spark word count test",
        "home work 3"
    ]

    rdd = spark.sparkContext.parallelize(data,2)

    def mapper(s: str) -> list[tuple[str, int]]:
        return [(x,1) for x in s.split(" ")]

    def reducer(x: int, y: int) -> int:
        return x + y

    print(
        rdd
        .flatMap(mapper)
        .reduceByKey(reducer)
        .collect()
    )
