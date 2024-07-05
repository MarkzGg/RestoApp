import { pool } from "../db.js";

// Get all ordenes
export const getOrdenes = async (req, res) => {
    try {
        const { rows } = await pool.query("SELECT * FROM ordenes");
        console.log(rows);
        res.json(rows);
    } catch (error) {
        console.log(error);
        res.status(500).json({ message: "Internal server error" });
    }
};

// Get a single orden by id
export const getOrden = async (req, res) => {
    const { id } = req.params;
    try {
        const { rows } = await pool.query("SELECT * FROM ordenes WHERE id_orden = $1", [id]);
        if (rows.length === 0) {
            return res.status(404).json({ message: "Orden not found" });
        }
        res.json(rows[0]);
    } catch (error) {
        console.log(error);
        res.status(500).json({ message: "Internal server error" });
    }
};

// Create a new orden
export const createOrden = async (req, res) => {
    try {
        const data = req.body;
        console.log(data);
        const { rows } = await pool.query(
            "INSERT INTO ordenes (cliente, total) VALUES ($1, $2) RETURNING *",
            [data.cliente, data.total]
        );
        return res.json(rows[0]);
    } catch (error) {
        console.log(error);
        if (error?.code === "23505") {
            return res.status(409).json({ message: "Orden already exists" });
        }
        return res.status(500).json({ message: "Internal server error" });
    }
};

// Delete an orden by id
export const deleteOrden = async (req, res) => {
    const { id } = req.params;
    try {
        const { rowCount } = await pool.query(
            "DELETE FROM ordenes WHERE id_orden = $1 RETURNING *",
            [id]
        );
        if (rowCount === 0) {
            return res.status(404).json({ message: "Orden not found" });
        }
        return res.sendStatus(204);
    } catch (error) {
        console.log(error);
        res.status(500).json({ message: "Internal server error" });
    }
};

// Update an orden by id
export const updateOrden = async (req, res) => {
    const { id } = req.params;
    const data = req.body;
    try {
        const { rows } = await pool.query(
            "UPDATE ordenes SET cliente = $1, total = $2 WHERE id_orden = $3 RETURNING *",
            [data.cliente, data.total, id]
        );
        if (rows.length === 0) {
            return res.status(404).json({ message: "Orden not found" });
        }
        return res.json(rows[0]);
    } catch (error) {
        console.log(error);
        res.status(500).json({ message: "Internal server error" });
    }
};
