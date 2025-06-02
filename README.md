# Climat Confort

A Flutter application focused on providing weather information and calculating a comfortable indoor temperature. It also includes elements for face identification, though the precise integration of this feature is under review.

This is a cross-platform application built with Flutter, capable of running on Android, iOS, Web, and Desktop platforms.

*(Consider adding a screenshot or GIF demo of the application here)*

## Features

*   **Climate Monitoring:**
    *   Displays current outdoor temperature (fetched for a pre-set location).
    *   Displays current humidity.
    *   Calculates and displays a recommended indoor temperature based on outdoor conditions.
    *   Visualizes indoor temperature using a circular progress bar.
*   **Face Identification:** (Note: The exact integration and purpose of this feature within the application's workflow are currently being investigated.)
*   **Theming:** Supports both light and dark modes, adapting to user preferences.
*   **Localization:** Built with multi-language support (English and Vietnamese are present).
*   **Responsive Design:** Adapts to different screen sizes for a consistent user experience across various devices.

## Project Structure

A brief overview of the key directories:

*   `lib/`: Contains the core Dart code for the application.
    *   `lib/app/`: Application-specific logic, including data, modules, routes, themes, translations, and utilities.
        *   `lib/app/data/`: Models (like `WeatherResponse`), API providers, controllers (like `HomeController`), and services (like `WeatherService`).
        *   `lib/app/modules/`: Contains different modules of the application (e.g., `home_module` for the main display, `splash_module` for the splash screen).
        *   `lib/app/routes/`: Defines navigation routes using GetX.
        *   `lib/app/themes/`: Manages application theming, including colors and text styles for light and dark modes.
        *   `lib/app/translations/`: Contains localization files for different languages.
        *   `lib/app/utils/`: Common utility classes, constants, extensions, and custom widgets.
    *   `lib/main.dart`: The main entry point of the Flutter application, setting up GetMaterialApp and initial configurations.
*   `assets/`: Contains static assets such as fonts (`NunitoSans`) and potentially images or SVGs (though none are explicitly listed for app features yet beyond icons).
*   `android/`, `ios/`, `web/`, `linux/`, `macos/`, `windows/`: Platform-specific code and configuration files required for building and running the application on each respective platform.
*   `pubspec.yaml`: The Dart package manager configuration file. It defines project metadata (name, description, version), dependencies (like GetX, http, google_fonts), and Flutter-specific configurations like asset declarations and font definitions.

## Key Dependencies

This project utilizes several key Flutter packages:

*   [get](https://pub.dev/packages/get): For state management, dependency injection, and route management.
*   [get_storage](https://pub.dev/packages/get_storage): For lightweight and fast local storage.
*   [responsive_framework](https://pub.dev/packages/responsive_framework): To easily make the UI responsive across different screen sizes.
*   [flutter_spinkit](https://pub.dev/packages/flutter_spinkit): A collection of loading indicators.
*   [google_fonts](https://pub.dev/packages/google_fonts): For using fonts from Google Fonts.
*   [http](https://pub.dev/packages/http): For making HTTP requests (used by the weather service).
*   [dashed_circular_progress_bar](https://pub.dev/packages/dashed_circular_progress_bar): For the circular progress bar used in the UI.
*   [flutter_svg](https://pub.dev/packages/flutter_svg): For rendering SVG files.
*   [provider](https://pub.dev/packages/provider): (While GetX is the primary state manager, Provider is also listed as a dependency).

For a full list of dependencies and their versions, please refer to the `pubspec.yaml` file.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

*   Flutter SDK: Make sure you have Flutter installed. For installation instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).
*   An IDE like Android Studio, IntelliJ IDEA, or VS Code with the Flutter plugin.

### Installation

1.  Clone the repo:
    ```sh
    git clone https://github.com/your_username/climat_confort.git 
    ```
    *(Please replace `https://github.com/your_username/climat_confort.git` with the actual repository URL when known.)*
2.  Navigate to the project directory:
    ```sh
    cd climat_confort
    ```
3.  Install dependencies:
    ```sh
    flutter pub get
    ```

### Running the Application

1.  Make sure you have an emulator running or a device connected.
2.  Run the app:
    ```sh
    flutter run
    ```
    The application should launch, displaying the outdoor temperature for 'Dakar', humidity, and a calculated indoor comfort temperature.

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

Don't forget to give the project a star! Thanks again!

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request
