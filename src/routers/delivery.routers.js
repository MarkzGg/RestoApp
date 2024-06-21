import {Router} from 'express'
import { createDeliverys, delateDeliverys, getDeliverys, getDelivery, updateDeliverys 
} 
from '../controllers/delivery.controllers.js';

const router = Router();

router.get("/delivery", getDeliverys);

router.get("/delivery/:id", getDelivery );

router.post("/delivery", createDeliverys);

router.delete("/delivery/:id", delateDeliverys);

router.put("/delivery/:id", updateDeliverys);

export default router;