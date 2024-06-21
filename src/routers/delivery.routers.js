import {Router} from 'express'
import { createUser, delateUser, getUser, getUsers, updateUser 
} 
from '../controllers/user.controllers.js';

const router = Router();

router.get("/users", getUsers);

router.get("/users/:id", getUser );

router.post("/users", createUser);

router.delete("/users/:id", delateUser);

router.put("/users/:id", updateUser);

export default router;