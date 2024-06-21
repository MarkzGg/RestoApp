import {pool} from "../db.js";

export const getDeliverys = async (req, res) => {
    const { rows } = await pool.query("SELECT * FROM delivery")
    console.log(rows);
    res.json(rows);
}
 export const getDelivery = async (req, res) => {
    const {id}= req.params;
    const {rows} = await pool.query("SELECT * FROM delivery WHERE id_delivery = $1", [id]);
    if (rows.length === 0){
        return res.status(404).json({message: "Delivery not found"});
    }
    res.json(rows[0]);
}
export const createDeliverys = async (req, res) => {
    try{
    const data = req.body;
    console.log(data);
    const {rows} = await pool.query(
    'INSERT INTO delivery (numero) VALUES ($1) RETURNING *', 
    [data.numero]);
    
    return res.json(rows[0]);
    } catch (error) {
        console.log(error);
        if (error?.code === "23505"){
            return res.status(409).json({message: "Delivery already exists"});
        }
        
        return res.status(500).json({message:"Internal server error"})
    }

}
export const delateDeliverys = async (req, res) => {
    const {id}= req.params;
    const {rowCount} = await pool.query(
        "DELETE FROM delivery WHERE id_delivery = $1 RETURNING *", 
        [id]
    );
    if (rowCount === 0){
        return res.status(404).json({message: "Delivery not found"});
    }
    return res.sendStatus(204);
}
export const updateDeliverys = async (req, res) => {
    const {id}= req.params;
    const data = req.body;
    const {rows} = await pool.query(
        'UPDATE delivery SET numero = $1 WHERE id_delivery = $2 RETURNING *',
        [data.numero, id]
    );
    return res.json(rows[0]);
}