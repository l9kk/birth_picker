# BirthPicker Flutter Package

A customizable date picker widget for Flutter applications, designed specifically for selecting birth dates. It offers a seamless user experience by supporting platform-specific date pickers (Cupertino for iOS and Material for Android) and customizable UI components.

## Features
- Supports both **iOS-style** (Cupertino) and **Android-style** (Material) date pickers.
- Auto-formats date fields (**year**, **month**, **day**) and validates input.
- Supports **localization** with customizable date field order.

## Installation
1. Add the following line to your `pubspec.yaml` under `dependencies`:
    ```yaml
    birth_picker: ^0.0.1
    ```
2. Run the following command to install the package:
    ```bash
    flutter pub get
    ```

## Usage
Before using the `BirthPicker` widget, **initialize date formatting** by calling `initializeDateFormatting()` in your `main` function:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting(); // Important: Initialize date formatting
  runApp(const MyApp());
}