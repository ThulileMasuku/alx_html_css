#!/bin/bash

file="index.html"
score=0

# Check if file exists
if [ -f "$file" ]; then
  echo "✅ index.html exists"
  ((score++))
else
  echo "❌ index.html not found"
  echo "Score: $score"
  exit 1
fi

# Extract <body> content
body=$(sed -n '/<body[^>]*>/,/<\/body>/p' "$file")

# Count <p> tags
p_count=$(echo "$body" | grep -o -i "<p[^>]*>" | wc -l)
if [ "$p_count" -ge 4 ]; then
  echo "✅ Found $p_count <p> tags in <body>"
  ((score++))
else
  echo "❌ Only found $p_count <p> tags (need at least 4)"
fi

# Check for <h1>
if echo "$body" | grep -iq "<h1[^>]*>.*</h1>"; then
  echo "✅ Found <h1> in <body>"
  ((score++))
else
  echo "❌ No <h1> found in <body>"
fi

# Check for <h2>
if echo "$body" | grep -iq "<h2[^>]*>.*</h2>"; then
  echo "✅ Found <h2> in <body>"
  ((score++))
else
  echo "❌ No <h2> found in <body>"
fi

# Check for <h3>
if echo "$body" | grep -iq "<h3[^>]*>.*</h3>"; then
  echo "✅ Found <h3> in <body>"
  ((score++))
else
  echo "❌ No <h3> found in <body>"
fi

# Check for <a>
if echo "$body" | grep -iq "<a[^>]*>.*</a>"; then
  echo "✅ Found <a> tag in <body>"
  ((score++))
else
  echo "❌ No <a> tag found in <body>"
fi

# Fi

