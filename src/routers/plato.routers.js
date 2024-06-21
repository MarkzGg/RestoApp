import {Router} from 'express'
import { createplatos, delateplatos, getplato, getplatos, updateplatos 
} 
from '../controllers/plato.controller.js';

const router = Router();

router.get("/platos", getplatos);

router.get("/plato/:id_plato", getplato);

router.post("/platos", createplatos);

router.delete("/platos/:id_plato", delateplatos);

router.put("/platos/:id_plato", updateplatos);

export default router;