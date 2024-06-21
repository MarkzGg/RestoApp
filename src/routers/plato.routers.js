import {Router} from 'express'
import { createPlatos, delatePlatos, getPlato, getPlatos, updatePlatos 
} 
from '../controllers/plato.controller.js';

const router = Router();

router.get("/platos", getPlatos);

router.get("/platos/:id", getPlato);

router.post("/platos", createPlatos);

router.delete("/platos/:id", delatePlatos);

router.put("/platos/:id", updatePlatos);

export default router;