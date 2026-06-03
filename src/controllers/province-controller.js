import { Router } from 'express';
import { StatusCodes } from 'http-status-codes';
import ProvinceService from '../services/province-service.js';

const ProvinceRouter = Router();

// GET /api/province
ProvinceRouter.get("/", async (req, res) => {
    const result = await ProvinceService.getAllAsync();
    res.status(StatusCodes.OK).json(result);
});

// GET /api/province/:id
ProvinceRouter.get("/:id", async (req, res) => {
    const result = await ProvinceService.getByIdAsync(req.params.id);
    if (!result) return res.status(StatusCodes.NOT_FOUND).json("Provincia no encontrada");
    res.status(StatusCodes.OK).json(result);
});

// POST /api/province
ProvinceRouter.post("/", async (req, res) => {
    const result = await ProvinceService.createAsync(req.body);
    if (result?.error) return res.status(StatusCodes.BAD_REQUEST).json(result.error);
    res.status(StatusCodes.CREATED).json(result);
});

// PUT /api/province
ProvinceRouter.put("/", async (req, res) => {
    const exists = await ProvinceService.getByIdAsync(req.body.id);
    if (!exists) return res.status(StatusCodes.NOT_FOUND).json("Provincia no encontrada");
    const result = await ProvinceService.updateAsync(req.body);
    if (result?.error) return res.status(StatusCodes.BAD_REQUEST).json(result.error);
    res.status(StatusCodes.CREATED).json(result);
});

// DELETE /api/province/:id
ProvinceRouter.delete("/:id", async (req, res) => {
    const exists = await ProvinceService.getByIdAsync(req.params.id);
    if (!exists) return res.status(StatusCodes.NOT_FOUND).json("Provincia no encontrada");
    await ProvinceService.deleteByIdAsync(req.params.id);
    res.status(StatusCodes.OK).json("Provincia eliminada correctamente");
});

export default ProvinceRouter;