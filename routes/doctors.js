const express = require('express');
const router = express.Router();
const db = require('../config/db');

router.get('/', async (req, res) => {
  try {
    const [doctors] = await db.query('SELECT * FROM doctors');
    res.json(doctors);
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

module.exports = router;