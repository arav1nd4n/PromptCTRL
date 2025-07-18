#!/usr/bin/env bash

feck() {
  if [[ -z "$AI_PROMPTGEN_API_KEY" ]]; then
    echo "❌ API key not set. Please export AI_PROMPTGEN_API_KEY in your .bashrc"
    return 1
  fi

  if [[ -z "$1" ]]; then
    echo "Usage: feck \"your command-related question\""
    return 1
  fi

  local query="$1"

  local response=$(curl -s https://openrouter.ai/api/v1/chat/completions \
    -H "Authorization: Bearer $AI_PROMPTGEN_API_KEY" \
    -H "Content-Type: application/json" \
    -d '{
      "model": "openrouter/mistral/mistral-7b-instruct:free",
      "messages": [
        {
          "role": "system",
          "content": "You are a bash expert. Reply with commands and explanations. Provide only relevant and copyable command blocks where applicable. Explain errors and suggest fixes when needed."
        },
        {
          "role": "user",
          "content": "'"${query//\"/\\\"}"'"
        }
      ]
    }')

  if echo "$response" | jq -e '.choices[0].message.content' > /dev/null; then
    echo "$response" | jq -r '.choices[0].message.content'
  else
    echo "⚠️ Something went wrong."
    echo "Raw response:"
    echo "$response"
  fi
}
