import {pool} from "../db.js";

export const getPlatos = async (req, res) => {
    const { rows } = await pool.query("SELECT * FROM platos")
    console.log(rows);
    res.json(rows);
}
 export const getPlato = async (req, res) => {
    const {id}= req.params;
    const {rows} = await pool.query("SELECT * FROM platos WHERE id_plato = $1", [id]);
    if (rows.length === 0){
        return res.status(404).json({message: "Plato not found"});
    }
    res.json(rows[0]);
}
export const createPlatos = async (req, res) => {
    try{
    const data = req.body;
    console.log(data);
    const {rows} = await pool.query(
    'INSERT INTO platos (name, precio) VALUES ($1, $2) RETURNING *', 
    [data.name, data.precio]);
    
    return res.json(rows[0]);
    } catch (error) {
        console.log(error);
        if (error?.code === "23505"){
            return res.status(409).json({message: "Plato already exists"});
        }
        
        return res.status(500).json({message:"Internal server error"})
    }

}
export const delatePlatos = async (req, res) => {
    const {id}= req.params;
    const {rowCount} = await pool.query(
        "DELETE FROM pLatos WHERE id_plato = $1 RETURNING *", 
        [id]
    );
    if (rowCount === 0){
        return res.status(404).json({message: "Plato not found"});
    }
    return res.sendStatus(204);
}
export const updatePlatos = async (req, res) => {
    const {id}= req.params;
    const data = req.body;
    const {rows} = await pool.query(
        'UPDATE Platos SET name = $1, precio = $2 WHERE id_plato = $3 RETURNING *',
        [data.name, data.precio, id]
    );
    return res.json(rows[0]);
}