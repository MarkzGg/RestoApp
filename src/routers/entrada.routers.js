import {Router} from 'express'
import { createEntradas, delateEntradas, getEntradas, getEntrada, updateEntradas 
} 
from '../controllers/entrada.controllers.js';

const router = Router();

router.get("/entrada", getEntradas);

router.get("/entrada/:id", getEntrada );

router.post("/entrada", createEntradas);

router.delete("/entrada/:id", delateEntradas);

router.put("/entrada/:id", updateEntradas);

export default router;