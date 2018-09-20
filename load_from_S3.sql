-- from https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.LoadFromS3.html

LOAD DATA FROM S3 's3://mybucket/data.txt'
    REPLACE
    INTO TABLE troll_tweets
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'
    (
        column1,
        column2);
