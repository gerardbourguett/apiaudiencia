import { Router } from "express";
import {
  getAudiencias,
  createAudiencias,
  deleteAudiencias,
  getAudiencia,
  updateAudiencias,
} from "../controllers/audiencias.controller.js";

const router = Router();

router.get("/audiencias", getAudiencias); // GET
router.get("/audiencias/:title", getAudiencia); // GET
router.post("/audiencias", createAudiencias); // POST
router.patch("/audiencias/:id", updateAudiencias); // PUT
router.delete("/audiencias/:id", deleteAudiencias); // DELETE

export default router;
