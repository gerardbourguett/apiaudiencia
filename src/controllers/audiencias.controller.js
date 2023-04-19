import { pool } from "../db.js";

// Description: Audiencias Controller

export const getAudiencias = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM audiencias");
    res.send(rows);
  } catch (error) {
    res.status(500).json({ error: "Error al obtener audiencias" });
  }
};

export const getAudiencia = async (req, res) => {
  try {
    const title = req.params.title;
    const [rows] = await pool.query(
      "SELECT * FROM audiencias WHERE title = ?",
      title
    );
    res.send(rows);
  } catch (error) {
    res.status(500).json({ error: "Error al obtener audiencia" });
  }
};

export const createAudiencias = async (req, res) => {
  try {
    const {
      title, start, end, tipoAudiencia, sala, magis, abo_patrocinante, textColor, backgroundColor, observaciones, created_at, updated_at
    } = req.body;
    const [rows] = await pool.query(
      "INSERT INTO `audiencias` (`title`, `start`, `end`, `tipoAudiencia`, `sala`, `magis`, `abo_patrocinante`, `textColor`, `backgroundColor`, `observaciones`, `created_at`, `updated_at`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
      [
        title, start, end, tipoAudiencia, sala, magis, abo_patrocinante, textColor, backgroundColor, observaciones, created_at, updated_at
      ]
    );
    console.log(req.body);
    res.send({ id: rows.insertId, ...req.body });
  } catch (error) {
    res.status(500).json({ error: "Error al crear audiencia" });
  }
};

export const deleteAudiencias = async (req, res) => {
  try {
    const [rows] = await pool.query("DELETE FROM audiencias WHERE id = ?", [
      req.params.id,
    ]);
    if (rows.affectedRows <= 0) {
      res.status(404).json({ error: "No se encuentra RIT agendado" });
    }
    res.sendStatus(204);
  } catch (error) {
    res.status(500).json({ error: "Error al eliminar audiencia" });
  }
};

export const updateAudiencias = async (req, res) => {
  const { id } = req.params;
  const {
    title, start, end, tipoAudiencia, sala, magis, abo_patrocinante, textColor, backgroundColor, observaciones, created_at, updated_at
  } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE audiencias SET title = IFNULL(?, title), start = IFNULL(?, start), end = IFNULL(?, end), tipoAudiencia = IFNULL(?, tipoAudiencia), sala = IFNULL(?, sala), magis = IFNULL(?, magis), abo_patrocinante = IFNULL(?, abo_patrocinante), textColor = IFNULL(?, textColor), backgroundColor = IFNULL(?, backgroundColor), observaciones = IFNULL(?, observaciones), created_at = IFNULL(?, created_at), updated_at = IFNULL(?, updated_at) WHERE id = ?",
      [
        title, start, end, tipoAudiencia, sala, magis, abo_patrocinante, textColor, backgroundColor, observaciones, created_at, updated_at, id
      ]
    );
    console.log(result);
    if (result.affectedRows <= 0) {
      res.status(404).json({ error: "No se encuentra RIT agendado" });
    }

    const [rows] = await pool.query("SELECT * FROM audiencias WHERE id = ?", [
      id,
    ]);

    res.json(rows[0]);
  } catch (error) {
    res.status(500).json({ error: "Error al actualizar audiencia" });
  }
};
