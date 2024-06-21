import {Router} from 'express'
import { createMesas, delateMesas, getMesas, getMesa, updateMesas 
} 
from '../controllers/mesa.controllers.js';

const router = Router();

router.get("/mesa", getMesas);

router.get("/mesa/:id", getMesa );

router.post("/mesa", createMesas);

router.delete("/mesa/:id", delateMesas);

router.put("/mesa/:id", updateMesas);

export default router;