const pg = require('pg')
const db = pg(process.env.DATABASE_URL || 'postgres://localhost:5432/music_player')

module.exports = db
