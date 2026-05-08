const express = require('express');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');

dotenv.config();

const app = express();

app.use(cors({ origin: 'http://localhost:5173', credentials: true }));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

app.use('/api/auth', require('./routes/auth'));
app.use('/api/plants', require('./routes/plants'));
app.use('/api/remedies', require('./routes/remedies'));
app.use('/api/doctors', require('./routes/doctors'));
app.use('/api/feedback', require('./routes/feedback'));
app.use('/api/contact', require('./routes/contact'));

app.get('/', (req, res) => res.json({ message: 'Herbal Garden API running ✅' }));

const PORT = process.env.PORT || 5001;
app.listen(PORT, () => console.log(`Server running on http://localhost:${PORT}`));