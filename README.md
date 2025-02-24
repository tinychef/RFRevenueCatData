# Ryan Fernando App Monetization Analytics Dashboard

A real-time analytics dashboard for monitoring app monetization metrics and user behavior.

## Features

### Key Performance Indicators (KPIs)
- Landing Page Signups
- Total Trials
- Total Paid Users
- Monthly Paid Users (NEW)
- Quarterly Paid Users (NEW)
- Monthly Recurring Revenue (MRR)
- Total Revenue
- Accounts Created
- Intake Forms Completed
- Referrals

### Trend Analysis
- Daily trend charts for all metrics
- Week over Week (WoW) growth rates
- Month over Month (MoM) changes
- Cumulative totals

### Revenue Analytics
- Revenue breakdown by subscription type
- Monthly vs Quarterly user tracking
- Conversion rates
- Geographic distribution

### Data Sources
- RevenueCat for subscription data
- OneSignal for user behavior
- Unbounce for landing page metrics

## Tech Stack
- Vanilla JavaScript
- Plotly.js (v2.27.0) for data visualization
- GitHub Pages for hosting

## Updates
- Added Monthly and Quarterly paid user tracking
- Improved trend visualization with cumulative totals
- Enhanced error handling for data loading
- Updated all chart libraries to latest stable versions

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
