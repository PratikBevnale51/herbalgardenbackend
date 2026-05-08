const express = require('express');
const router = express.Router();
const db = require('../config/db');
const { verifyToken } = require('../middleware/auth');

router.post('/', verifyToken, async (req, res) => {
  const { rating, message } = req.body;
  if (!rating || !message) return res.status(400).json({ message: 'Rating and message required' });
  try {
    await db.query('INSERT INTO feedback (user_id, rating, message) VALUES (?,?,?)',
      [req.user.id, rating, message]);
    res.status(201).json({ message: 'Feedback submitted!' });
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

router.get('/', async (req, res) => {
  try {
    const [rows] = await db.query(`
      SELECT f.*, u.name AS user_name FROM feedback f
      LEFT JOIN users u ON f.user_id = u.id
      ORDER BY f.created_at DESC`);
    res.json(rows);
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

module.exports = router;