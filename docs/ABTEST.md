A/B Test 1: Short vs. Long Onboarding
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

Design Rationale:
Shortening onboarding reduces friction, improving retention and engagement by getting users to the app’s core features faster.
