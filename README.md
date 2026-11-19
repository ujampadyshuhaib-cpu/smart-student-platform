# 🎓 Smart Student Platform (SSP)
### An Enterprise-Ready School Management Web Application

> **Location:** `C:\Users\ujamp\OneDrive\Desktop\project`  
> **Key Modules:** 👨‍🎓 Student, 👩‍🏫 Teacher, 👨‍👩‍👧 Parent, 🏛️ Admin (Principal)  
> **Core Pillars:** 📅 Real-Time Attendance Management & 📊 Class Examination Marksheets

---

## 🌟 Key Highlights & Modules

### 1. 🏛️ Admin (Principal) Module
- **Executive KPI Dashboard**: Total students, faculty staff, parents, real-time daily attendance percentage, and school-wide exam average.
- **Visual Analytics**: Interactive Chart.js charts for class-wise attendance rates and grade distribution ($A^+, A, B, C, D, F$).
- **School Attendance Monitor**: Filter attendance across any class and date, inspect individual roll-call statuses, and export daily reports to CSV.
- **Master Marksheets & GPA Generator**: Comprehensive table showing subject-by-subject scores, total marks, percentages, letter grades, and class rank for every student.
- **Examination Scheduling**: Create and publish new midterm, final, or unit test examinations with custom maximum marks and passing criteria.
- **User Directory**: View enrolled students, faculty, and guardians with one-click "View As" capability and new student enrollment dialog.
- **Broadcast Notice Board**: Issue school circulars that instantly show up on Teacher, Student, and Parent dashboards.
- **System Data Backup & Restore**: One-click JSON database backup, restore, and demo data reset.

---

### 2. 👩‍🏫 Teacher Module
- **Interactive Daily Attendance Register**:
  - Class & Section switcher (Grade 10-A, 10-B, 9-A).
  - Date selector with instant status tracking.
  - Quick bulk actions: **"All Present"**, **"All Absent"**.
  - Interactive status toggles: **Present** (Green), **Absent** (Red), **Late** (Amber), **Excused** (Blue).
  - Custom notes / remarks per student.
  - Live attendance counter.
- **Class Exam Marks Entry System**:
  - Select Exam, Class, and Subject (Mathematics, Science, English, Computer Science, etc.).
  - Tabular mark entry with real-time score validation (prevents entering scores exceeding maximum marks).
  - Instant auto-calculation of percentage and letter grade ($A^+, A, B, C, D, F$) as the teacher types.
  - Individual student remarks input.
  - Saves to database with real-time synchronization across all other modules.
- **Subject Analytics & Highlights**: Radar charts showing class average scores and automated recommendations for top rankers and students needing assistance.

---

### 3. 👨‍🎓 Student Module
- **Personalized Student Command Center**:
  - Greeting banner with roll number, class teacher, and guardian.
  - Real-time attendance percentage radial donut chart.
  - Current class rank and overall GPA ($4.0$ scale).
- **Attendance Log**: Day-by-day calendar history showing date, day of week, presence status, and teacher remarks.
- **Examination Marksheet**:
  - Detailed subject-by-subject score cards showing marks obtained, maximum marks, percentage, letter grade, and teacher feedback.
  - Comparison bar chart of personal scores vs $40\%$ passing threshold.
- **Official Formal Printable Report Card**:
  - Formatted institutional header with Greenwood Academy crest and seal.
  - Complete transcript of subject scores, aggregate marks, overall percentage, and class rank.
  - Grading scale key ($A^+, A, B, C, D, F$) and official signature lines for Class Teacher & Principal.
  - Print-ready via `window.print()` / Save as PDF.

---

### 4. 👨‍👩‍👧 Parent Module
- **Multi-Child Switcher**: Parents with multiple enrolled children (e.g., Alexander Miller and Mia Johnson) can switch between children in 1 click.
- **Daily Attendance Alert Banner**:
  - Instant notification banner showing whether the child is present or absent today in class.
- **Child Academic Progress Tracker**: View verified test marks, class rank, and teacher remarks.
- **Official Child Report Card**: Download or print official academic transcripts.
- **Leave Application Submission**:
  - Submit leave requests (From Date, To Date, Reason for absence) directly to the school principal and class teacher.
  - Track leave request statuses (Approved / Pending Review).

---

## 🚀 How to Run the Application

You can launch and use the application immediately using any of the methods below:

### Method A: 1-Click Launch (Recommended)
1. Double-click the `start_app.bat` file inside `c:\Users\ujamp\OneDrive\Desktop\project`.
2. It will open `index.html` in your default browser.

### Method B: Direct Browser Open
1. Open your web browser (Chrome, Edge, Firefox, Brave).
2. Press `Ctrl + O` and select `c:\Users\ujamp\OneDrive\Desktop\project\index.html`.

### Method C: Local Web Server (PowerShell)
If you prefer running via `http://localhost:8080`:
1. Right-click `server.ps1` and select **Run with PowerShell** (or run `powershell -ExecutionPolicy Bypass -File .\server.ps1` in PowerShell).
2. Visit `http://localhost:8080` in your browser.

---

## 🔑 Pre-Configured Demo Credentials

The platform includes a persistent **1-Click Role Switcher Bar** at the top of the screen to switch between any user instantly. You can also sign in manually:

| Role | Username | Password | Full Name & Title |
|---|---|---|---|
| **Admin (Principal)** | `principal` | `password123` | Dr. Arthur Vance (Head of Institution) |
| **Teacher** | `teacher.smith` | `password123` | Sarah Smith, M.Sc. (Senior Math & Science) |
| **Teacher (CS/Eng)** | `teacher.davis` | `password123` | Prof. Marcus Davis (Head of CS & English) |
| **Student** | `student.alex` | `password123` | Alexander Miller (Grade 10-A, Roll: 10A-01) |
| **Student** | `student.sophia`| `password123` | Sophia Martinez (Grade 10-A, Roll: 10A-02) |
| **Parent** | `parent.miller` | `password123` | Robert & Clara Miller (Parents of Alex & Mia) |

---

## 📁 Project File Architecture

```
c:\Users\ujamp\OneDrive\Desktop\project\
├── index.html           # Main SPA layout, top navbar, 1-click role switcher, modals
├── css/
│   └── styles.css       # Tailwind extensions, animations, print-optimized report card styles
├── js/
│   ├── data.js          # Seed database (classes, subjects, students, teachers, marks, attendance)
│   ├── storage.js       # LocalStorage CRUD operations, batch calculations, and CSV export
│   ├── auth.js          # Role-based session management and permission checks
│   ├── admin.js         # Principal module (school KPIs, attendance monitor, master marksheet)
│   ├── teacher.js       # Teacher module (daily roll-call, mark entry sheet with auto-grades)
│   ├── student.js       # Student module (attendance gauge, scorecards, report card generator)
│   ├── parent.js        # Parent module (child selector, attendance alerts, leave requests)
│   └── app.js           # Global controller, theme switcher (dark/light), modals, toasts
├── start_app.bat        # 1-Click launcher for Windows
├── server.ps1           # Native PowerShell HTTP server (no Node/Python required)
└── README.md            # Comprehensive project documentation
```

---

## 💡 Key Architectural Details
- **No external server installation required**: Runs 100% out of the box using modern browser capabilities (`localStorage`, Chart.js, Tailwind CSS).
- **Real-Time Cross-Module Sync**: When a teacher marks attendance or submits exam marks, the changes immediately update in real-time across the Student, Parent, and Admin dashboards!
- **Data Persistence**: Any changes you make persist across browser refreshes, and can be backed up or restored anytime via the **System Data** tab in the Admin portal.
