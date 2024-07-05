import { Router } from 'express';
import { createOrden, deleteOrden, getOrden, getOrdenes, updateOrden } from '../controllers/orden.controller.js';

const router = Router();

router.get("/orden", getOrdenes);
router.get("/orden/:id", getOrden);
router.post("/orden", createOrden);
router.delete("/orden/:id", deleteOrden);
router.put("/orden/:id", updateOrden);

export default router;
