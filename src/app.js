import express from "express";
import audienciasRoutes from "./routes/audiencias.routes.js";
import indexRoutes from "./routes/index.routes.js";

import './config.js'

const app = express();

app.use(express.json()); // for parsing application/json

app.use("/api", audienciasRoutes);
app.use(indexRoutes);

app.use((req, res, next) => {
    res.status(404).json({ message: "Not found" });
})

export default app;