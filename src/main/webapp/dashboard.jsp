<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="Css/dashboard.css">
</head>
<body>
    <div class="sidebar">
        <h2>JPt School</h2>
        <ul>
            <li class="active">📊 Dashboard</li>
            <li>📚 Assignment</li>
            <li>👩🏫 Teachers</li>
            <li>💬 Messages</li>
            <li>🎥 Live Classroom</li>
            <li>📝 Exams</li>
            <li>⚙️ Settings</li>
        </ul>
    </div>
    <div class="main-content">
        <header>
            <div class="profile">
             	<span>John Doe</span>
                <img src="https://via.placeholder.com/48" alt="Profile Picture">
               
            </div>
            <input type="text" placeholder="Search...">
        </header>
        <div class="cards">
            <div class="card">Top Students: 10</div>
            <div class="card">Top Teachers: 10</div>
            <div class="card">Top Subjects: 10</div>
        </div>
        <div class="grid-container">
        <div class = "row">
            <div class="progress">
                <h3>📈 Progress of Each Subject</h3>
                <p>Mathematics</p>
                <div class="progress-bar"><div style="width: 80%;">80%</div></div>
                <p>English Literature</p>
                <div class="progress-bar"><div style="width: 90%;">90%</div></div>
                <p>Science</p>
                <div class="progress-bar"><div style="width: 75%;">75%</div></div>
                <p>Java</p>
                <div class="progress-bar"><div style="width: 75%;">75%</div></div>
            </div>
            <div class="attendance">
                <h3>📅 Attendance</h3>
                <div class="chart-container">
                    <canvas id="attendanceChart"></canvas>
                </div>
            </div>
            </div>
            <div class = "row">
            <div class="timetable">
                <h3>⏰ Time Table</h3>
                <table>
                    <tr><td>Monday</td><td>English - 9:00 AM</td><td>Maths - 9:45 AM</td></tr>
                    <tr><td>Tuesday</td><td>Chemistry - 11:00 AM</td><td>History - 1:00 PM</td></tr>
                </table>
            </div>
            <div class="news">
                <h3>📢 Announcement & News</h3>
                <p>🎓 New Semester Starts August 1st</p>
                <p>🏅 School Sports Day on July 15th</p>
                <p>📚 Library Renovation Complete</p>
            </div>
        </div>
        </div>
    </div>

    <script>
        const ctx = document.getElementById('attendanceChart').getContext('2d');
        new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: ['Present', 'Absent'],
                datasets: [{
                    data: [92, 8],
                    backgroundColor: ['#4CAF50', '#FF6384'],
                    borderWidth: 0,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'bottom',
                        labels: {
                            boxWidth: 12,
                            padding: 20
                        }
                    }
                },
                cutout: '75%'
            }
        });
    </script>
</body>

</html>

