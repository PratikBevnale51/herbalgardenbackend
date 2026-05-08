const express = require('express');
const router = express.Router();
const db = require('../config/db');
const multer = require('multer');
const path = require('path');
const { verifyToken, isAdmin } = require('../middleware/auth');
const fs = require('fs');

const uploadDir = path.join(__dirname, '../uploads');
if (!fs.existsSync(uploadDir)) fs.mkdirSync(uploadDir, { recursive: true });

const storage = multer.diskStorage({
  destination: (req, file, cb) => cb(null, uploadDir),
  filename: (req, file, cb) => cb(null, Date.now() + '-' + file.originalname.replace(/\s/g, '_'))
});
const upload = multer({ storage, limits: { fileSize: 5 * 1024 * 1024 } });

router.get('/', async (req, res) => {
  try {
    const { category, search } = req.query;
    let query = 'SELECT * FROM plants';
    const params = [];
    if (category && category !== 'All') { query += ' WHERE category = ?'; params.push(category); }
    if (search) {
      query += params.length ? ' AND' : ' WHERE';
      query += ' (name LIKE ? OR description LIKE ?)';
      params.push(`%${search}%`, `%${search}%`);
    }
    query += ' ORDER BY created_at DESC';
    const [plants] = await db.query(query, params);
    res.json(plants);
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

router.get('/:id', async (req, res) => {
  try {
    const [plants] = await db.query('SELECT * FROM plants WHERE id = ?', [req.params.id]);
    if (plants.length === 0) return res.status(404).json({ message: 'Plant not found' });
    res.json(plants[0]);
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

router.post('/', verifyToken, isAdmin, upload.single('image'), async (req, res) => {
  const { name, scientific_name, description, usage, benefits, category } = req.body;
  const image = req.file ? req.file.filename : null;
  try {
    const [result] = await db.query(
      'INSERT INTO plants (name, scientific_name, description, `usage`, benefits, image, category) VALUES (?,?,?,?,?,?,?)',
      [name, scientific_name, description, usage, benefits, image, category]
    );
    res.status(201).json({ message: 'Plant added', id: result.insertId });
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

router.delete('/:id', verifyToken, isAdmin, async (req, res) => {
  try {
    await db.query('DELETE FROM plants WHERE id = ?', [req.params.id]);
    res.json({ message: 'Plant deleted' });
  } catch (err) { res.status(500).json({ message: 'Server error' }); }
});

module.exports = router;
