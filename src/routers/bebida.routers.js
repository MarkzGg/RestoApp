import {Router} from 'express'
import { createBebidas, delateBebidas, getBebidas, getBebida, updateBebidas 
} 
from '../controllers/bebida.controllers.js';

const router = Router();

router.get("/bebida", getBebidas);

router.get("/bebida/:id", getBebida );

router.post("/bebida", createBebidas);

router.delete("/bebida/:id", delateBebidas);

router.put("/bebida/:id", updateBebidas);

export default router;