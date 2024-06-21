import express from "express";
import { PORT } from "./config.js";
import userRoutes from "./routers/user.routers.js";
import platoRoutes from "./routers/plato.routers.js"
import guarnicionesRoutes from "./routers/guarniciones.routers.js"
import entradaRoutes from "./routers/entrada.routers.js"
import bebidaRoutes from "./routers/bebida.routers.js"
import mesaRoutes from "./routers/mesa.routers.js"
import deliveryRoutes from "./routers/delivery.routers.js"
import morgan from "morgan";

const app = express();

app.use(morgan('dev'))
app.use(express.json());
app.use(userRoutes);
app.use(platoRoutes);
app.use(guarnicionesRoutes);
app.use(entradaRoutes);
app.use(bebidaRoutes);
app.use(mesaRoutes);
app.use(deliveryRoutes);

app.listen(PORT);
console.log('Server on port', PORT);


