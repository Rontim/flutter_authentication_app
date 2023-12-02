# My Auth Flutter App

My Auth is a Flutter application that implements user authentication using Firebase. It provides features for email/password authentication and phone number verification. The app also utilizes GetX for efficient state management and Firestore for storing user details.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Configuration](#configuration)
  - [Firebase Setup](#firebase-setup)

## Features

- Email/password authentication
- Phone number verification
- State management with GetX
- User details stored in Firestore

## Getting Started

### Prerequisites

Make sure you have the following installed:

- Flutter: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart: [Install Dart](https://dart.dev/get-dart)

### Installation

1. Clone the repository:

   ```bash
    git clone https://github.com/your-username/my-auth.git
    ```

2. Navigate to the cloned repository:

   ```bash
    cd my-auth
    ```

3. Install the dependencies:

   ```bash
    flutter pub get
    ```

## Configuration

### Firebase Setup

1. Create a new project on the Firebase Console.
2. Add your Android and iOS apps to the Firebase project.
3. Download the google-services.json file for Android and GoogleService-Info.plist file for iOS.
4. Place the files in the respective directories (android/app for Android and ios for iOS) in your Flutter project.
