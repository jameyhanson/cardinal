-- from https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.LoadFromS3.html

LOAD DATA FROM S3 's3://mybucket/data.txt'
    REPLACE
    INTO TABLE troll_tweets
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'
    (
        external_author_id, --An author account ID from Twitter
        author, --The handle sending the tweet
        content, --The text of the tweet
        region, -- A region classification, as determined by Social Studio
        language, --The language of the tweet
        publish_date, --The date and time the tweet was sent
        harvested_date, --The date and time the tweet was collected by Social Studio
        following, --The number of accounts the handle was following at the time of the tweet
        followers, --The number of followers the handle had at the time of the tweet
        updates, --The number of “update actions” on the account that authored the tweet, including tweets, retweets and likes
        post_type, --Indicates if the tweet was a retweet or a quote-tweet
        account_type, --Specific account theme, as coded by Linvill and Warren
        retweet, --A binary indicator of whether or not the tweet is a retweet
        account_category, --General account theme, as coded by Linvill and Warren
        new_june_2018, --A binary indicator of whether the handle was newly listed in June 2018
        alt_external_id, --Reconstruction of author account ID from Twitter, derived from article_url variable and the first list provided to Congress
        tweet_id, --Unique id assigned by twitter to each status update, derived from article_url
        article_url, --Link to original tweet. Now redirects to "Account Suspended" page
        tco1_step1, --First redirect for the first http(s)://t.co/ link in a tweet, if it exists
        tco2_step1, --First redirect for the second http(s)://t.co/ link in a tweet, if it exists
        tco3_step1, --First redirect for the third http(s)://t.co/ link in a tweet, if it exists
    );
