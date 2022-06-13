# Dermascope

A new Flutter project.

## Getting Started

Skin diseases considered to be on of the most dangerous diseases that could affect the human life. Some of skin diseases can infect others by touching other people who are infected with. We developed a flutter application for detection the skin diseases by just capturing the photo of the skin lesion. Using API, flutter sends the photo to the back-end to start the detection, then recieves the detection result. On the back-end side, The photo is analyzed using Machine learning and find the most probable disease. Another feature in the application, If it isn't the first time to use the application, the application will show the last disease detected on this user (Last detection for each user is stored in the database 'MongoDB').
