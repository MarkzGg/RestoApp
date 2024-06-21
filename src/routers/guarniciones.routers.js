import {Router} from 'express'
import { createGuarnicions, delateGuarnicions, getGuarnicions, getGuarnicion, updateGuarnicions 
} 
from '../controllers/guarniciones.controllers.js';

const router = Router();

router.get("/guarnicion", getGuarnicions);

router.get("/guarnicion/:id", getGuarnicion );

router.post("/guarnicion", createGuarnicions);

router.delete("/guarnicion/:id", delateGuarnicions);

router.put("/guarnicion/:id", updateGuarnicions);

export default router;