# Unhandled JSON Decoding Exception in Dart HTTP Request

This repository demonstrates a common error in Dart code when handling HTTP requests and JSON responses.  The `bug.dart` file showcases code that fails to properly handle exceptions during JSON decoding, potentially leading to application crashes.  The `bugSolution.dart` file offers a corrected version with improved error handling.

## Problem

The original code attempts to decode a JSON response without verifying if the response body is valid JSON. If the server returns an error or non-JSON data, `jsonDecode` will throw a `FormatException`, causing the application to crash if the exception is not caught and handled gracefully.

## Solution

The solution involves adding explicit checks before decoding the JSON and using a `try-catch` block to handle potential `FormatException` exceptions.  More specific error messages are also provided to aid in debugging.

## Usage

1. Clone this repository.
2. Run the `bug.dart` file to see the original error.
3. Run the `bugSolution.dart` file to observe the improved error handling.