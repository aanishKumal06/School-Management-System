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
    <style>
        :root {
            --primary-color: #2a3f54;
            --secondary-color: #1a2b40;
            --accent-color: #4CAF50;
            --text-light: #ffffff;
            --background-light: #f8f9fa;
        }

        body {
            display: flex;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: var(--background-light);
        }

        .sidebar {
            width: 280px;
            background: linear-gradient(180deg, var(--primary-color), var(--secondary-color));
            color: var(--text-light);
            padding: 2rem 1.5rem;
            height: 100vh;
            box-shadow: 4px 0 15px rgba(0,0,0,0.1);
        }

        .sidebar h2 {
            text-align: center;
            font-size: 1.8rem;
            margin-bottom: 2rem;
            color: var(--text-light);
            letter-spacing: 1px;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .sidebar ul li {
            padding: 1rem;
            margin: 0.5rem 0;
            cursor: pointer;
            border-radius: 8px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .sidebar ul li:hover {
            background: rgba(255,255,255,0.1);
        }

        .sidebar ul .active {
            background: var(--secondary-color);
            box-shadow: inset 3px 0 0 var(--accent-color);
        }

        .main-content {
            flex: 1;
            padding: 2rem;
            background: var(--background-light);
        }

        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: white;
            padding: 1rem 2rem;
            border-radius: 12px;
            margin-bottom: 2rem;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
        }

        .profile {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .profile img {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--accent-color);
        }

        .profile span {
            font-weight: 600;
            color: var(--primary-color);
            font-size: 1.1rem;
        }

        header input {
            padding: 0.8rem 1.5rem;
            border: 1px solid #e0e0e0;
            border-radius: 25px;
            font-size: 1rem;
            width: 300px;
            background: #f8f9fa;
            transition: all 0.3s ease;
        }

        header input:focus {
            outline: none;
            border-color: var(--accent-color);
            box-shadow: 0 0 0 3px rgba(76,175,80,0.1);
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .card {
            background: white;
            padding: 1.5rem;
            border-radius: 12px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.08);
            transition: transform 0.3s ease;
            text-align: center;
            border-left: 4px solid var(--accent-color);
        }

        .card:hover {
            transform: translateY(-3px);
        }
		.grid-container {
		    display: flex;
		    flex-direction: column;
		    gap: 20px;
		    margin-top: 20px;
		}
		
		.row {
		    display: flex;
		    gap: 20px;
		    flex-wrap: nowrap; /* Ensure items stay in single row */
		}
		
		.progress, .attendance, .timetable, .news {
		    background: white;
		    padding: 20px;
		    border-radius: 12px;
		    box-shadow: 0 2px 4px rgba(0,0,0,0.08);
		    flex: 1; /* Equal width distribution */
		    min-width: 300px; /* Minimum width before wrapping */
		}
 }

        h3 {
            color: var(--primary-color);
            margin-top: 0;
            margin-bottom: 1.5rem;
            font-size: 1.3rem;
        }

        .progress-bar {
            height: 20px;
            background: #e9ecef;
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 1.5rem;
        }

        .progress-bar div {
            height: 100%;
            background: linear-gradient(90deg, var(--accent-color), #45a049);
            text-align: right;
            padding-right: 8px;
            font-size: 0.9rem;
            transition: width 0.5s ease;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 0.8rem;
            border-bottom: 1px solid #eee;
        }

        .news p {
            padding: 0.8rem;
            background: #f8f9fa;
            border-radius: 6px;
            margin: 0.5rem 0;
        }

        .chart-container {
            height: 250px;
            position: relative;
        }
    </style>
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
                <img src="https://via.placeholder.com/48" alt="Profile Picture">
                <span>John Doe</span>
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
                cutout: '70%'
            }
        });
    </script>
</body>

</html>

