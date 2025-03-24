# Metrics

## Google HEART Framework
[RentEase HEART FrameWork](https://docs.google.com/presentation/d/1lZQ8L8J6KBpiQgjMlItVQNbLG9vUb1vhW1mT_8wzphU/edit?usp=sharing)

## Metric 1 - Happiness 
NPS (Net Promoter Score)

Implement survery from FlutterFlow marketplace. This survery will pop up after the user logs in for the 5th time. The user will see this survey on the the general listings page for students/landlords at the end of the Golden Path with data recorded in the database for that user.

## Metric 2 - Engagement
Clicks Per Listing

When a user clicks on a property listing to view more details, this event is logged in Firebase Analytics. The data is stored in the database, allowing us to track the number of clicks for each property listing. The click-through rate (CTR) for each listing can be calculated by dividing the number of clicks for that listing by the total number of times that listing was viewed or displayed.

## Metric 3 - Adoption
Registration Rate

When a user successfully signs up for an account (as a new user), this action is logged as an event in Firebase Analytics. The data is stored in the database, allowing us to track the number of users who attempt to sign up and how many successfully complete the process.

## Metric 4 - Retention
7-day Retention Rate (Retention)

To measure how many users return to the app within 7 days of their first login, we will track user activity using Firebase Analytics. When a new user logs in for the first time, an event labeled "first_login" will be recorded in Firebase along with a timestamp. Each time the user logs in after that, another event labeled "user_login" will be logged.

To calculate the 7-day retention rate, we will check how many users who triggered the "first_login" event log in again within 7 days. This data will be stored in Firestore and analyzed by comparing the timestamps of subsequent "user_login" events. The retention rate is determined by dividing the number of users who return within 7 days by the total number of new users in the same period.

By analyzing this metric, we can evaluate user engagement and identify whether improvements are needed in onboarding, feature usefulness, or notification strategies to encourage continued app usage.

## Metric 5 - Task Success
Student Paired with Roommate Success

Checking to see how many students that are looking for roommates find a roommate through our roommate preference survey

## Metric 6 - Task Success Part 2
Search to Contact Conversion Rate

Track user interactions using Firebase Analytics. When a user performs a property search and clicks the "Contact" button to reach out to a property owner, these events are logged. The data is stored in the database, allowing us to calculate the conversion rate by dividing the number of contact initiations by the total number of searches.




