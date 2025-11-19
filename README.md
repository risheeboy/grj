# Playwright Java Project

This is a minimal Java project using Gradle to run Playwright tests.

## Prerequisites

- Java 17 or higher (Java 21 recommended)

## Setup

### Mac / Linux
If you have the project for the first time, you can build it using the Gradle Wrapper:

```bash
./gradlew build
```

If `gradlew` is missing or not executable, you can bootstrap it (if the script is provided) or ensure you have Gradle installed.

### Windows
```cmd
gradlew.bat build
```

## Running Tests

To run the Playwright tests:

### Mac / Linux
```bash
./gradlew test
```

### Windows
```cmd
gradlew.bat test
```

## Code Generation

You can use Playwright's code generator to record user interactions and generate Java code.

To launch the codegen tool:

```bash
./gradlew codegen
```

To generate code for a specific website (e.g., Google):

```bash
./gradlew codegen --args="https://www.google.com"
```
