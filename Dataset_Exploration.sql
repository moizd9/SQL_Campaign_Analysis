CREATE TABLE marketing_campaigns (
    Campaign_ID INT,
    Company VARCHAR(255),
    Campaign_Type VARCHAR(100),
    Target_Audience VARCHAR(100),
    Duration VARCHAR(50),
    Channels_Used VARCHAR(255),
    Conversion_Rate FLOAT,
    Acquisition_Cost VARCHAR(50),  -- 👈 Here changed to VARCHAR
    ROI FLOAT,
    Location VARCHAR(100),
    Language VARCHAR(50),
    Clicks INT,
    Impressions INT,
    Engagement_Score INTEGER,
    Customer_Segment VARCHAR(100),
    Date DATE
);

##Explorting the dataset 

select * from marketing_campaigns
LIMIT 20;

DESCRIBE marketing_campaigns;

SELECT count(*) from marketing_campaigns;

SELECT distinct Campaign_Type from marketing_campaigns;
## As we can see that this dataset has various campaign types like Email, Influencer, Display, Searhc and Social Media.alter


## Tell me what channels were used for the marketing campaigns:- 
SELECT distinct Channels_Used from marketing_campaigns;

##Let's see what type of target audiences this dataset has:- 
SELECT Distinct Target_Audience from marketing_campaigns;
