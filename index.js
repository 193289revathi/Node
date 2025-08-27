const express = require('express');
const mysql = require('mysql2');

const app = express();
const port = 3000;

// DB connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'nodeuser',     // same user you created in MariaDB
  password: 'nodepass', // password you gave
  database: 'office'
});

// connect to DB
db.connect(err => {
  if (err) {
    console.error("❌ DB connection failed: " + err.stack);
    return;
  }
  console.log("✅ Connected to DB");
});

// simple API
app.get('/employees', (req, res) => {
  db.query("SELECT * FROM Employees", (err, results) => {
    if (err) {
      res.status(500).send("DB query failed");
      return;
    }
    res.send("Hello employees\n" + JSON.stringify(results, null, 2));
  });
});

app.listen(port, () => {
  console.log(`🚀 Server running at http://0.0.0.0:${port}`);
});
