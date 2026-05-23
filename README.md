# Simple AI Resume Analyzer

A beautiful, modern web application that simulates analyzing resumes for ATS compatibility, extracting skills, and providing actionable suggestions.

Built with a Vanilla JS frontend and a Python Flask backend.

## Features
- **Modern UI**: Dark mode, glassmorphism, smooth animations.
- **Drag & Drop**: Easily upload PDF resumes.
- **Simulated AI Analysis**: Parses text and returns an ATS score, skills, and feedback.

## Project Structure
- `/backend`: Flask API serving the backend logic.
- `/frontend`: HTML, CSS, and JS files for the UI.

## Getting Started

### 1. Setup Backend
Open your terminal and navigate to the project directory:

```bash
# Navigate to backend folder
cd backend

# Install requirements
pip install -r requirements.txt

# Run the Flask app
python app.py
```
The backend will run on `http://127.0.0.1:5000`.

### 2. Run Frontend
Since it's a static frontend, you can simply open `frontend/index.html` in your web browser. 

Alternatively, if you use VS Code, use the **Live Server** extension to serve the `frontend` directory.

## Technologies Used
- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Backend**: Python, Flask, pdfplumber (for PDF parsing), Flask-CORS
