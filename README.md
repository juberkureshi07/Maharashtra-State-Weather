
🌦️ Maharashtra State Weather — Automated Weather Monitoring (36 Districts)

A fully automated, state-wide weather tracking system built using GitHub Actions.

This project collects real-time weather data for all 36 districts of Maharashtra, updates every 3 hours, and stores the latest information inside each district folder.

This behaves like a distributed microservice network, where each district has its own automated pipeline.


---

🚀 Features

🔄 Auto-update every 3 hours

📁 36 districts covered individually

🤖 Fully automated GitHub Actions workflows

🌐 Uses wttr.in API for real-time weather

🗂️ Clean multi-district folder architecture

💚 Keeps GitHub graph consistently active with real data

🧩 Microservice-style setup (1 workflow per district)

🛡️ Error-free, optimized automation scripts



---

🗂️ Project Architecture

maharashtra-state-weather/
│
├── Ahmednagar/weather.txt
├── Akola/weather.txt
├── Amravati/weather.txt
├── Aurangabad/weather.txt
├── Beed/weather.txt
├── Bhandara/weather.txt
├── Buldhana/weather.txt
├── Chandrapur/weather.txt
├── Dhule/weather.txt
├── Gadchiroli/weather.txt
├── Gondia/weather.txt
├── Hingoli/weather.txt
├── Jalgaon/weather.txt
├── Jalna/weather.txt
├── Kolhapur/weather.txt
├── Latur/weather.txt
├── Mumbai-City/weather.txt
├── Mumbai-Suburban/weather.txt
├── Nagpur/weather.txt
├── Nanded/weather.txt
├── Nandurbar/weather.txt
├── Nashik/weather.txt
├── Osmanabad/weather.txt
├── Palghar/weather.txt
├── Parbhani/weather.txt
├── Pune/weather.txt
├── Raigad/weather.txt
├── Ratnagiri/weather.txt
├── Sangli/weather.txt
├── Satara/weather.txt
├── Sindhudurg/weather.txt
├── Solapur/weather.txt
├── Thane/weather.txt
├── Wardha/weather.txt
├── Washim/weather.txt
└── Yavatmal/weather.txt

.github/workflows/
│   ├── Ahmednagar.yml
│   ├── Akola.yml
│   ├── Amravati.yml
│   ├── Aurangabad.yml
│   └── ... (all 36 district workflows)


---

🔄 Automation Workflow (How it Works)

For each district:

1. A GitHub Action triggers using a cron schedule


2. It fetches weather data from:

https://wttr.in/<District>?format=3


3. The output is saved in that district’s weather.txt file


4. The workflow commits and pushes the change automatically


5. The system repeats every 3 hours, 24×7




---

📊 Benefits

✔ Real-world automation project

✔ Demonstrates DevOps, CI/CD, scripting, and API integration skills

✔ Ideal for resume, portfolio, and GitHub profile

✔ Maintains a strong, meaningful contribution graph

✔ Showcases understanding of scalable system design



---

📍 Covered Districts (36)

Ahmednagar • Akola • Amravati • Aurangabad • Beed • Bhandara • Buldhana • Chandrapur • Dhule • Gadchiroli
Gondia • Hingoli • Jalgaon • Jalna • Kolhapur • Latur • Mumbai City • Mumbai Suburban • Nagpur • Nanded
Nandurbar • Nashik • Osmanabad • Palghar • Parbhani • Pune • Raigad • Ratnagiri • Sangli • Satara
Sindhudurg • Solapur • Thane • Wardha • Washim • Yavatmal


---

🛠️ Technologies Used

Technology	Purpose

GitHub Actions	Automation engine
Cron Jobs	Scheduled workflows
wttr.in API	Real-time weather data
Shell Scripting	Fetching & updating weather
Distributed Design	Separate workflow per district



---

📈 Project Status Badges (Optional)

> You can enable workflow badges here once all workflows are created.



Example badge:

![Aurangabad Weather](https://github.com/juberkureshi07/maharashtra-state-weather/actions/workflows/Aurangabad.yml/badge.svg)



---

👨‍💻 Developer

Juber Julfekar Kureshi
Automation Enthusiast • CI/CD • API Integrator
Creator of E&C Ai Friend
GitHub: @juberkureshi07


---

⭐ Support

If you like this project and want more automation systems,
please star ⭐ this repository — it helps support future improvements!
