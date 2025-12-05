#!/bin/bash

districts=(
  "Ahmednagar" "Akola" "Amravati" "Aurangabad" "Beed" "Bhandara" "Buldhana"
  "Chandrapur" "Dhule" "Gadchiroli" "Gondia" "Hingoli" "Jalgaon" "Jalna"
  "Kolhapur" "Latur" "Mumbai-City" "Mumbai-Suburban" "Nagpur" "Nanded"
  "Nandurbar" "Nashik" "Osmanabad" "Palghar" "Parbhani" "Pune" "Raigad"
  "Ratnagiri" "Sangli" "Satara" "Sindhudurg" "Solapur" "Thane"
  "Wardha" "Washim" "Yavatmal"
)

mkdir -p .github/workflows

for district in "${districts[@]}"; do

  mkdir -p "$district"
  echo "Weather data will appear here." > "$district/weather.txt"

  cat > ".github/workflows/${district}.yml" <<EOF
name: ${district} Weather Update

on:
  schedule:
    - cron: "0 */3 * * *"
  workflow_dispatch:

jobs:
  update-weather:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - name: Fetch Weather
        run: |
          curl -s "https://wttr.in/${district}?format=3" > "${district}/weather.txt"

      - name: Commit update
        run: |
          git config --local user.name "github-actions[bot]"
          git config --local user.email "github-actions[bot]@users.noreply.github.com"
          git add "${district}/weather.txt"
          git commit -m "${district} weather update" || echo "No changes"
          git push

EOF

done
