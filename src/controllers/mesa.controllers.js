import {pool} from "../db.js";

export const getMesas = async (req, res) => {
    const { rows } = await pool.query("SELECT * FROM mesa")
    console.log(rows);
    res.json(rows);
}
 export const getMesa = async (req, res) => {
    const {id}= req.params;
    const {rows} = await pool.query("SELECT * FROM mesa WHERE id_mesa = $1", [id]);
    if (rows.length === 0){
        return res.status(404).json({message: "Mesa not found"});
    }
    res.json(rows[0]);
}
export const createMesas = async (req, res) => {
    try{
    const data = req.body;
    console.log(data);
    const {rows} = await pool.query(
    'INSERT INTO mesa (numero) VALUES ($1) RETURNING *', 
    [data.numero]);
    
    return res.json(rows[0]);
    } catch (error) {
        console.log(error);
        if (error?.code === "23505"){
            return res.status(409).json({message: "Mesa already exists"});
        }
        
        return res.status(500).json({message:"Internal server error"})
    }

}
export const delateMesas = async (req, res) => {
    const {id}= req.params;
    const {rowCount} = await pool.query(
        "DELETE FROM mesa WHERE id_mesa = $1 RETURNING *", 
        [id]
    );
    if (rowCount === 0){
        return res.status(404).json({message: "Mesa not found"});
    }
    return res.sendStatus(204);
}
export const updateMesas = async (req, res) => {
    const {id}= req.params;
    const data = req.body;
    const {rows} = await pool.query(
        'UPDATE mesa SET numero = $1 WHERE id_mesa = $2 RETURNING *',
        [data.name, data.precio, id]
    );
    return res.json(rows[0]);
}