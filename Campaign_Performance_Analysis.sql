# -------------------------------------------------------------------------------- 
# PERFORMANCE METRICS
# -------------------------------------------------------------------------------- 

select * from marketing_campaigns
Limit 20;

# --- Top Performing Campaigns

SELECT Campaign_Type, AVG(ROI) as avg_roi
FROM marketing_campaigns
Group by Campaign_Type
Order by avg_roi DESC;

## Here i can see that Influencer campaign types are top performing, followed by search, display, email and SM.

# --- Top Channels By Conversion Rate

SELECT Channels_Used, AVG(Conversion_Rate) as avg_conversion_rate
FROM marketing_campaigns
GROUP by Channels_Used
Order by avg_conversion_rate DESC;

## I can observe that Email channel has the highest average conversion rate followed by Google Ads and so on. 

# --- Which Audience is Most Engaged 

SELECT Target_Audience, AVG(Engagement_Score) as avg_engagement
from marketing_campaigns
group by Target_Audience
Order By avg_engagement Desc;

## Men aged 18-24 have the highest engagement rate. 

# --- Also see which channels these Audience groups are mostly engaged on

SELECT Target_Audience, Channels_Used, AVG(Engagement_Score) as avg_engagement
from marketing_campaigns
group by Target_Audience, Channels_Used
Order By avg_engagement Desc;



# -------------------------------------------------------------------------------- 
# COST AND ROI ANALYSIS
# -------------------------------------------------------------------------------- 

# --- Average Acquisition Cost By Channel

## For this step, as we can see that the acquisition column contains a '$' and ',' which will make it difficult to calculate avg CAC. 
## SO here i will filter them without changing the dataset. 

SELECT Channels_Used, 
AVG(CAST(REPLACE(REPLACE(Acquisition_Cost, '$', ''), ',','') AS DECIMAL (10,2))) AS avg_cac
from marketing_campaigns
Group By Channels_Used
Order by avg_cac;



# -------------------------------------------------------------------------------- 
# FUNNEL METRICS
# -------------------------------------------------------------------------------- 

# --- Clicks to Impressions Rate (CTR) by Campaign Type

Select Campaign_Type, SUM(Clicks) / SUM(Impressions) * 100 as CTR 
from marketing_campaigns
Group by Campaign_Type
Order by CTR DESC;

## Here i can see SM campaigns have a higher CTR followed by Display, etc. 



# -------------------------------------------------------------------------------- 
#  TIME SERIES ANALYSIS 
# -------------------------------------------------------------------------------- 

# --- Campaigns Over Time (Year/Month Trend):

SELECT 
EXTRACT(YEAR FROM Date) AS Year,
EXTRACT(MONTH FROM Date) As Month,
Count(*) as total_campaigns
from marketing_campaigns
Group by Year, Month
Order by Year, Month;

## Here i am doing it for the year as well as month to get precise details


# -------------------------------------------------------------------------------- 
# GEOGRAPHICAL ANALYSIS 
# -------------------------------------------------------------------------------- 

# --- Top Locations with Highest Engagement

SELECT Location, AVG(Engagement_Score) As avg_eng_score 
from marketing_campaigns
Group by Location
order by avg_eng_score DESC;


# -------------------------------------------------------------------------------- 
# ADVANCE METRICS
# -------------------------------------------------------------------------------- 

# --- Channel Effectiveness by Customer Segment

# for each Customer Segment, which Channel had the highest average ROI?

SELECT 
Customer_Segment,
Channels_Used,
AVG(ROI) as avg_roi
from marketing_campaigns
Group By Customer_Segment, Channels_Used
ORDER BY Customer_Segment, avg_roi DESC;

## So i can observe that Fashionistas have Google Ads which are generating highest ROI for them. 
## Similarly Foodies segment have Website and Health&Wellness segment have Email. 


# --- Highest ROI Campaigns

# Which campaigns achieved ROI greater than 5 (i.e., at least 150% returns?

 SELECT 
 Company, Campaign_Type, Channels_Used, ROI
 from marketing_campaigns
 Where ROI > 5
 Order by ROI DESC;

# --- Low Performing Campaigns

# Which campaigns actually lost money (ROI less than 1)

Select 
Company, Campaign_Type, Channels_Used, ROI
From marketing_campaigns
WHERE ROI < 5
ORDER BY ROI DESC;


# --- Best Month To Launch Campaigns

#In which month do campaigns give the best average ROI?

SELECT 
MONTH(Date) AS campaign_month,
AVG(ROI) AS avg_roi
FROM marketing_campaigns
GROUP BY campaign_month
ORDER BY avg_roi DESC;

## we can see September is best month to gain highest ROI. 


