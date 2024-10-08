# This script runs Flutter tests with coverage, processes the coverage data,
# generates an HTML report, and opens the report in the default web browser.
#
# Steps:
# 1. Run Flutter tests with coverage.
# 2. Remove generated files from the coverage report.
# 3. Generate an HTML report from the coverage data.
# 4. Open the HTML report in the default web browser (macOS specific).
#
# Note: Adjust the command to open the HTML report for your OS if necessary.
#!/bin/bash
 
# Run tests with coverage
flutter test --coverage
 
# Remove generated files from coverage
lcov --remove coverage/lcov.info '**/*.g.dart' -o coverage/lcov.info
 
# Generate HTML report
genhtml coverage/lcov.info -o coverage/html
 
# Open the HTML report (macOS specific, adjust for your OS)
open coverage/html/index.html