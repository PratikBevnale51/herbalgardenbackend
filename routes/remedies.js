const express = require('express');
const router = express.Router();
const db = require('../config/db');
const { verifyToken, isAdmin } = require('../middleware/auth');

router.get('/', async (req, res) => {
  try {
    const { category } = req.query;
    let query = 'SELECT * FROM remedies';
    const params = [];
    if (category) { query += ' WHERE category = ?'; params.push(category); }
    const [remedies] = await db.query(query, params);
    res.json(remedies);
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

router.post('/', verifyToken, isAdmin, async (req, res) => {
  const { title, category, ingredients, instructions } = req.body;
  try {
    const [result] = await db.query(
      'INSERT INTO remedies (title, category, ingredients, instructions) VALUES (?,?,?,?)',
      [title, category, ingredients, instructions]
    );
    res.status(201).json({ message: 'Remedy added', id: result.insertId });
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

router.delete('/:id', verifyToken, isAdmin, async (req, res) => {
  try {
    await db.query('DELETE FROM remedies WHERE id = ?', [req.params.id]);
    res.json({ message: 'Remedy deleted' });
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

module.exports = router;