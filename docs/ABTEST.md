# A/B Test 1: Short vs. Long Onboarding
User Story Number: US1 (Onboarding)

Metrics:
Retention Rate: Percentage of users returning after 1 and 7 days.
Completion Rate: Percentage of users who finish onboarding.
Drop-off Rate: Percentage of users who abandon onboarding.
Engagement Rate: Percentage of users engaging with the app post-onboarding.

Hypothesis:
Shorter onboarding (3 steps) will increase user retention by reducing overwhelm and improving completion rates.

Problem & Impact:
The current 5-step onboarding may lead to drop-offs. Shortening it could improve user retention and engagement by making the process quicker and less tedious.

Experiment:
Audience: First-time users, 50% random split.
Tracking: Use Firebase A/B Testing to track onboarding_completed, drop_off_point, user_retention, time_to_complete_onboarding, and onboarding_feedback.

Variations:
Variation 1 (Control - Long Onboarding):
many steps: name/email, detailed info, profile picture, age, major, hometown, bio, college year, social media handle.

Variation 2 (Treatment - Short Onboarding):
fewer steps: email/signup, profile picture, basic preferences (name, age, year).



# A/B Test Name: Immediate vs. Delayed NPS Survey
User Story Number: US5 (User Feedback Collection)

Metrics:

NPS Score

Survey Completion Rate

Engagement Rate

Drop-off Rate

Hypothesis:
Displaying the NPS survey immediately after the 5th login will increase completion rates and yield more accurate feedback compared to showing it at the end of the Golden Path.

Problem & Impact:
Users may ignore the survey if shown at the end of their session due to fatigue. Testing the timing will help determine the best moment for engagement while minimizing drop-offs.

Experiment:

Audience: 50% of users see the survey at the end of the Golden Path (control), 50% see it immediately after the 5th login (treatment).

Tracking (Firebase Analytics): survey_shown, survey_completed, survey_dismissed, nps_score_submitted.

Variations:

Control: Survey appears at the end of the Golden Path.

Treatment: Survey appears immediately after the 5th login.

Design Rationale:
Testing different survey timings ensures optimal user engagement and feedback accuracy.

Design Rationale:
Shortening onboarding reduces friction, improving retention and engagement by getting users to the app’s core features faster.

# A/B Test Sign-up Background Color impact on Retention 
User Story Number: US2 (Sign-Up Page Background Color Test)

Metrics:

Retention Rate: Percentage of users returning after 1 and 7 days.
Signup Completion Rate: Percentage of users who complete the sign-up process.
Drop-off Rate: Percentage of users who leave during sign-up.
Engagement Rate: Percentage of users engaging with the app post-signup.
Hypothesis: Changing the background color of the sign-up page from a colored background (#add8e6) to a clean white background (#FFFFFF) will improve readability and perceived professionalism, leading to higher sign-up completion and user retention.

Problem & Impact:
The current light blue background (#add8e6) may distract or visually fatigue users during sign-up. A cleaner, white background (#FFFFFF) could provide a more modern and trustworthy aesthetic, potentially reducing friction, improving user perception, and boosting initial engagement and retention.

Experiment:

Audience: First-time users, 50% random split.
Tracking: Use Firebase A/B Testing to track sign_up_completed, drop_off_point, user_retention (1 and 7 days), time_on_sign_up_page, and signup_page_feedback.
Variations:

Variation 1 (Control - Current Color): Sign-up page background color is #add8e6 (light blue).
Variation 2 (Treatment - New Color): Sign-up page background color is #FFFFFF (white).

# A/B Test Guided Preferences Setup vs. Traditional Setup
User story number: Roommate Preferences User Story (US5)

Objective:
Test two different approaches for the sign-up and preferences setup process to identify which flow maximizes user engagement, minimizes errors, and leads to higher completion rates for roommate account creation.

Test Group A (Control Group) - Current Flow
This group will follow the existing process as described in the original user story.

Steps:
Roommate Account Creation:

Roommates enter a valid email, password, and confirm their details.

After clicking "Create Account," the system creates the account and redirects the user to the preferences setup page.

Roommate Preferences Setup:

Roommates enter their name, contact information, lifestyle preferences, smoking habits, pet preferences, budget, and desired location.

After filling in the details, the user clicks "Save Preferences."

If any required field is missing, an error message is displayed, and preferences cannot be saved until all required fields are completed.

Account Already Exists:

If the user tries to register with an email that's already associated with an existing account, the system displays an error message and prompts the user to log in instead.

Hypothesis for Group A:
The existing flow is expected to function as intended, but users may be delayed in completing the process if they overlook or forget to fill in the required fields, especially if they receive a single error message at the end.

Test Group B (Variation) - Guided Setup with Progress Indicators
This group will introduce a more guided approach to preferences setup, with a progress indicator to help users know where they are in the process and improve completion rates.

Steps:
Roommate Account Creation:

Roommates enter a valid email, password, and confirm their details.

After clicking "Create Account," the system creates the account and immediately redirects them to the preferences setup page.

Roommate Preferences Setup:

Instead of showing all preferences in a single form, the setup page will present the preferences in multiple sections (e.g., "Personal Information," "Lifestyle Preferences," "Budget," "Location").

A progress bar or indicator will show users how far they are in completing the preferences setup (e.g., "Step 2 of 4").

Each section will allow users to fill in and save the information individually, without needing to fill out the entire form at once. This reduces the chances of errors and incomplete submissions.

If a user attempts to save a section with missing required fields (e.g., name, contact information, or budget), the system will show a message like "Please complete all required fields" and prevent moving to the next section until all mandatory fields are filled.

Hypothesis for Group B:
A guided, step-by-step preferences setup with clear progress indicators will help users feel more confident throughout the process, reducing the chances of missed fields and increasing completion rates. The feedback provided will also ensure users don’t get stuck or frustrated by missing required information.

Metrics to Measure:
Conversion Rate:

The percentage of users who successfully create an account and complete the preferences setup.

Time to Complete Preferences Setup:

The average time users take to complete the preferences setup, from account creation to saving preferences.

Error Rate:

The number of error messages shown due to missing fields or existing account conflicts.

User Engagement:

The interaction rate with the progress indicator and section-based setup, measuring how users are responding to the guided approach.

User Satisfaction:

A post-completion survey asking users to rate their experience in terms of ease of use, satisfaction, and how helpful the progress indicator was in completing the preferences setup.

A/B Test Process:
Randomly Assign Users: New users are randomly assigned to either Group A or Group B.

Run the Test for a Set Period: The test will run for a period of 1-2 weeks to gather sufficient data.

Analyze Results: Compare the key metrics (conversion rate, time to complete, error rate, engagement, and satisfaction) between the two groups.

Expected Outcome:
Group B is expected to show higher completion rates and user satisfaction due to the guided setup and progress tracking, which should reduce user anxiety and help them complete the preferences setup without missing key details.
