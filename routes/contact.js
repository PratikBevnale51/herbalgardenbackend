const express = require('express');
const router = express.Router();
const db = require('../config/db');

router.post('/', async (req, res) => {
  const { name, email, message } = req.body;
  if (!name || !email || !message)
    return res.status(400).json({ message: 'All fields are required' });
  try {
    await db.query('INSERT INTO contact_messages (name, email, message) VALUES (?,?,?)',
      [name, email, message]);
    res.status(201).json({ message: 'Message sent successfully' });
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

module.exports = router;