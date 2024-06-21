import {Router} from 'express'
import { createUser, delateUser, getUser, getUsers, updateUser 
} 
from '../controllers/user.controllers.js';

const router = Router();

router.get("/orden", getUsers);

router.get("/orden/:id", getUser );

router.post("/orden", createUser);

router.delete("/orden/:id", delateUser);

router.put("/orden/:id", updateUser);

export default router;