# RFRevenueCatData

Analytics dashboard for Ryan Fernando's app monetization data.

## Data Files

The dashboard uses three main data sources:

1. **RevenueCat Data** (`revenuecat_data.json`)
   - Contains subscription and revenue data from RevenueCat
   - Includes trial and paid user information
   - Tracks revenue across iOS and Android platforms

2. **Unbounce Landing Page Data** (`Unbounce_landing_page_leads_data.json`)
   - Contains lead generation data from landing pages
   - Tracks user signups and conversion points

3. **OneSignal User Behavior Data** (Split into multiple files)
   - `OneSignal_Data_part1.json` through `OneSignal_Data_part4.json`
   - Contains user behavior and engagement metrics
   - Split into multiple files for better performance
   - Tracks events like:
     - Account creation
     - Form completion
     - Referrals
     - User engagement

## Dashboard Features

- Real-time metrics and KPIs
- Revenue analysis by platform
- Geographic distribution of users
- Weekly growth tracking
- Conversion funnel visualization
- Monthly and quarterly revenue trends

## Usage

The dashboard automatically loads data from GitHub. No additional setup required.
