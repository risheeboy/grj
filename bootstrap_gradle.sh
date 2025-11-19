#!/bin/bash
set -e

GRADLE_VERSION=8.5
DIST_URL="https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"
TEMP_DIR="gradle_temp"

echo "Downloading Gradle ${GRADLE_VERSION}..."
mkdir -p $TEMP_DIR
curl -L $DIST_URL -o $TEMP_DIR/gradle.zip

echo "Unzipping Gradle..."
unzip -q $TEMP_DIR/gradle.zip -d $TEMP_DIR

echo "Generating Gradle Wrapper..."
$TEMP_DIR/gradle-${GRADLE_VERSION}/bin/gradle wrapper --gradle-version ${GRADLE_VERSION}

echo "Cleaning up..."
rm -rf $TEMP_DIR

echo "Done! You can now use ./gradlew"
