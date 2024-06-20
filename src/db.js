import pg from 'pg'
import { DB_HOST, BD_DATABASE, DB_PASSWORD, DB_PORT, DB_USER } from './config.js'

export const pool = new pg.Pool({
    user: DB_USER,
    host: DB_HOST,
    password: DB_PASSWORD,
    database: BD_DATABASE,
    port: DB_PORT
});

