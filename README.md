# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart applications when working with JSON responses: attempting to access a key that does not exist in the JSON data.  This can lead to runtime exceptions and application crashes if not handled properly.

The `bug.dart` file shows the erroneous code that throws an exception when accessing a non-existent key.  The `bugSolution.dart` file provides a corrected version with robust error handling.

## How to run

1. Clone this repository.
2. Navigate to the directory.
3. Run the code using your Dart SDK: `dart bug.dart` (or `dart bugSolution.dart`)

## Solutions

The recommended solution involves checking for the existence of a key before attempting to access it using methods like `containsKey()`.