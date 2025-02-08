# Dart: Unhandled Exception in JSON Decoding

This example demonstrates an uncommon but frequent error in Dart when handling JSON responses that may have missing nested keys.  The original code attempts to access a nested key ('someKey["nestedKey"]') without checking for null values, leading to an exception if the key is absent.

The solution demonstrates proper null checks and safe access using the `?` operator.

## How to reproduce

1. Run `bug.dart`.
2. If the API response at https://api.example.com/data does not contain the nested key, the code will crash.

## Solution

The `bugSolution.dart` file provides a corrected version using null-aware operators for safe JSON access.