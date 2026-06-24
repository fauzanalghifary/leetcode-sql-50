SELECT tweets.tweet_id
FROM tweets
WHERE LENGTH(tweets.content) > 15