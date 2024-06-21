import {Router} from 'express'
import { createUser, delateUser, getUser, getUsers, updateUser 
} 
from '../controllers/user.controllers.js';

const router = Router();

router.get("/mesa", getUsers);

router.get("/mesa/:id", getUser );

router.post("/mesa", createUser);

router.delete("/mesa/:id", delateUser);

router.put("/mesa/:id", updateUser);

export default router;