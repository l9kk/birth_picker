# BirthPicker Flutter Package

[![pub package](https://img.shields.io/pub/v/birth_picker.svg)](https://pub.dartlang.org/packages/birth_picker)
[![Score](https://img.shields.io/pub/points/birth_picker?label=Score&logo=dart)](https://pub.dartlang.org/packages/birth_picker/score)
[![Platform](https://img.shields.io/badge/Platform-Android%20|%20iOS%20|%20macOS%20|%20Web%20|%20Windows%20|%20Linux%20-blue.svg?logo=flutter)](https://pub.dartlang.org/packages/birth_picker)
![GitHub stars](https://img.shields.io/github/stars/intelryzen/birth_picker)
![GitHub forks](https://img.shields.io/github/forks/intelryzen/birth_picker)
![GitHub issues](https://img.shields.io/github/issues/intelryzen/birth_picker)
![GitHub pull requests](https://img.shields.io/github/issues-pr/intelryzen/birth_picker)

A customizable date picker widget for Flutter applications, designed specifically for selecting birth dates. It offers a seamless user experience by supporting platform-specific date pickers (Cupertino for iOS and Material for Android) and customizable UI components.

![Simulator Screen Recording](https://github.com/user-attachments/assets/e21bdd3d-44ce-4a98-bac6-bfa182cf3dfb)

| **Keyboard Input Example**              | **iOS Date Picker Example**               | **Android Date Picker Example**            |
|-----------------------------------------|------------------------------------------|-------------------------------------------|
| ![s1](https://github.com/user-attachments/assets/f98e0e18-d99c-4521-bb93-fde46a233b0a) | ![s2](https://github.com/user-attachments/assets/d43ec6d9-202c-4a16-82fc-c076b6ceee00) | ![Screenshot3](https://github.com/user-attachments/assets/8fe735b7-2309-4207-921e-f29bd7ff1f00) |

## Features
- Supports both **iOS-style** (Cupertino) and **Android-style** (Material) date pickers.
- Auto-formats date fields (**year**, **month**, **day**) and validates input.
- Supports **localization** with customizable date field order.
- **Flexible input options**:  
  - Allows users to enter the date directly using the keyboard.  
  - Provides an **icon button** to easily select the date using a platform-specific date picker.

## Installation
1. Add the following line to your `pubspec.yaml` under `dependencies`:
    ```yaml
    birth_picker: ^1.1.1
    ```
2. Run the following command to install the package:

    ```bash
    flutter pub get
    ```
3. Import it:
    ```dart
    import 'package:birth_picker/birth_picker.dart';
    ```
    
## Usage
Before using the `BirthPicker` widget, **initialize date formatting** by calling `initializeDateFormatting()` in your `main` function, as it depends on the **[intl](https://pub.dev/packages/intl)** package for handling localized date formats:

```dart
import 'package:birth_picker/birth_picker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting(); // Important: Initialize date formatting
  runApp(const MyApp());
}
```

## Props
| **Props**         | **Types**                          | **Default**           | **Description**                                                                                                                                 |
|-------------------|-----------------------------------|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| `decoration`      | `BoxDecoration?`                  |                 | Decoration for the widget container (e.g., border, background).                                                                                  |
| `padding`         | `EdgeInsets?`                     |    | Padding for the entire widget.                                                                                                                  |
| `focusColor`      | `Color?`                          |                 | Color of the background when the field is focused.                                                                                               |
| `focusPadding`    | `EdgeInsets?`                     |                 | Padding when the field is focused                                                                                                    |
| `textStyle`       | `TextStyle?`                      |                 | Text style for the input fields.                                                                                                                 |
| `locale`          | `String?`                         |  | Locale for date formatting (e.g., "en_US").                                                                                                      |
| `autofocus`       | `bool`                            | `false`               | Whether the first field should get focus automatically on load.                                                                                  |
| `icon`            | `Widget?`                         | | User-customized icon to display next to the input fields.                                                                                        |
| `iconColor`       | `Color?`                          |                 | Color of the icon.                                                                                                                               |
| `iconSize`        | `double`                          | `20`                  | Size of the icon.                                                                                                                                |
| `onChanged`       | `void Function(DateTime?)?` | `null`                | Callback function triggered when the date changes. Passes `null` if the dateTime is invalid.                                                    |

## Example
```dart
import 'package:birth_picker/birth_picker.dart';
...
BirthPicker(
  onChanged: (dateTime) {
    if (dateTime != null) {
      print('Selected Date: ${dateTime.toIso8601String()}');
    } else {
      print('Invalid Date');
    }
  },
)
```
